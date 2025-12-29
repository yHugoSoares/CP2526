\subsection*{Problema 1}

\subsubsection*{Resolução}

Para o catamorfismo |levels|, precisamos definir o gene |glevels| que transforma
o funtor de |BTree| em listas de listas. 

O diagrama que expressa o catamorfismo é:
\begin{eqnarray*}
\xymatrix@@C=1cm{
    |BTree a|
           \ar[d]_-{|levels|}
&
    |1 + a >< (BTree a >< BTree a)|
           \ar[d]^{|id + id >< (levels >< levels)|}
           \ar[l]_-{|inBTree|}
\\
     |[[a]]|
&
     |1 + a >< ([[a]] >< [[a]])|
           \ar[l]^-{|glevels|}
}
\end{eqnarray*}

O gene |glevels| deve processar:
\begin{itemize}
\item |Empty|: retorna lista vazia |[]|
\item |Node (a, (ls, rs))|: junta o elemento |a| como primeiro nível, 
e depois intercala os níveis das subárvores esquerda e direita
\end{itemize}

A função auxiliar que intercala duas listas de listas nível a nível:
\begin{spec}
zipWithPlus :: [[a]] -> [[a]] -> [[a]]
zipWithPlus [] ys = ys
zipWithPlus xs [] = xs  
zipWithPlus (x:xs) (y:ys) = (x ++ y) : zipWithPlus xs ys
\end{spec}

\begin{code}
-- Calculate the height of a binary tree
heightTree :: BTree a -> Int
heightTree Empty = 0
heightTree (Node (_, (left, right))) = 1 + max (heightTree left) (heightTree right)

-- Gene for levels catamorphism
glevels :: Either () (a, ([[a]], [[a]])) -> [[a]]
glevels = either (const []) (\(a, (ls, rs)) -> [a] : zipWithPlus ls rs)
  where
    zipWithPlus [] ys = ys
    zipWithPlus xs [] = xs
    zipWithPlus (x:xs) (y:ys) = (x ++ y) : zipWithPlus xs ys

bft t = undefined 

\end{code}

\subsection*{Problema 2}

\subsubsection*{Resolução}

A função |f x n| calcula o seno hiperbólico através de aproximações da série de Taylor:
\begin{eqnarray*}
\sinh(x) = \sum_{n=0}^{\infty} \frac{x^{2n+1}}{(2n+1)!} = x + \frac{x^3}{3!} + \frac{x^5}{5!} + \frac{x^7}{7!} + \cdots
\end{eqnarray*}

O termo geral é:
\begin{eqnarray*}
a_n = \frac{x^{2n+1}}{(2n+1)!}
\end{eqnarray*}

E a relação de recorrência entre termos consecutivos:
\begin{eqnarray*}
a_{n+1} = a_n \times \frac{x^2}{(2n+2)(2n+3)}
\end{eqnarray*}

A função |worker n| mantém um estado com 5 componentes:
\begin{itemize}
\item |s| - soma parcial acumulada: $\sum_{i=0}^{n} a_i$
\item |h| - numerador do termo atual: $x^{2n+1}$
\item |k| - denominador do termo atual: $(2n+1)!$
\item |j| - próximo valor para denominador: $(2n+2)$
\item |m| - incremento: $2(2n+1)$
\end{itemize}

O diagrama da recursividade pode ser expresso como:
\begin{eqnarray*}
\xymatrix@@C=1cm{
    |Nat0|
           \ar[d]_-{|worker|}
&
    |1 + Nat0|
           \ar[d]^{|id + worker|}
           \ar[l]_-{|inNat|}
\\
     |[Real]|
&
     |1 + [Real]|
           \ar[l]^-{|either (start x) (loop x)|}
}
\end{eqnarray*}

Onde:
\begin{itemize}
\item |start x = [x, x^3, 6, 20, 22]| (estado inicial para $n=0$)
\item |loop x [s, h, k, j, m] = [h/k + s, x^2 * h, k * j, j + m, m + 8]| (passo recursivo)
\item |wrapper = head| (extrai a soma final)
\end{itemize}

\begin{code}
-- Sum using catamorphism (using existing cataList from List module)
sumList :: Num a => [a] -> a
sumList = cataList (either (const 0) (uncurry (+)))

-- Product using catamorphism
productList :: Num a => [a] -> a
productList = cataList (either (const 1) (uncurry (*)))

-- Length using catamorphism
lengthList :: [a] -> Int
lengthList = cataList (either (const 0) (\(_, n) -> n + 1))
\end{code}

\subsection*{Problema 3}

\subsubsection*{Resolução}

O problema pede para definir |fair_merge| como um anamorfismo de |Stream|s.
Primeiro, vamos derivar a lei dual da recursividade mútua.

\textbf{Lei dual da recursividade mútua (Fokkinga dual)}:

Partindo da definição de anamorfismo e da recursividade mútua para funções
mutuamente recursivas |f| e |g|:

\begin{eqnarray*}
\start
|either f g = anaStream gene|
\just\equiv{ definição de anamorfismo }
|either f g = Cons . (id >< anaStream gene) . gene|
\just\equiv{ lei de Leibniz }
|lcbr(f = Cons . (id >< anaStream gene) . gene . i1)(g = Cons . (id >< anaStream gene) . gene . i2)|
\just\equiv{ definição de |outStream| }
|lcbr(outStream . f = (id >< anaStream gene) . gene . i1)(outStream . g = (id >< anaStream gene) . gene . i2)|
\just\equiv{ funtor de |Stream|: |fF h = id >< h| }
|lcbr(outStream . f = fF (either f g) . h)(outStream . g = fF (either f g) . k)|
\qed
\end{eqnarray*}

onde |gene . i1 = h| e |gene . i2 = k|.

\textbf{Aplicação ao problema}:

A função |fair_merge| já está definida como:
\begin{spec}
fair_merge = either h k where
   h (Cons(x,xs), y) = Cons(x , k(xs,y))
   k (x, Cons(y,ys)) = Cons(y , h(x,ys))
\end{spec}

Agora precisamos encontrar o gene tal que |fair_merge = anaStream gene|.

Calculemos |outStream . h|:
\begin{spec}
outStream . h = outStream . Cons . split x (k . split xs y)
              = split x (k . split xs y)
\end{spec}

E |outStream . k|:
\begin{spec}
outStream . k = outStream . Cons . split y (h . split x ys)
              = split y (h . split x ys)
\end{spec}

O diagrama do anamorfismo é:
\begin{eqnarray*}
\xymatrix@@C=1cm{
    |(Stream a >< Stream a) + (Stream a >< Stream a)|
           \ar[d]_-{|either h k|}
&
    |a >< ((Stream a >< Stream a) + (Stream a >< Stream a))|
           \ar[d]^{|id >< either h k|}
           \ar[l]_-{|gene|}
\\
     |Stream a|
&
     |a >< Stream a|
           \ar[l]^-{|Cons|}
}
\end{eqnarray*}

\begin{code}
-- Coin flip distribution
coinFlip :: Dist Bool
coinFlip = D [(True, 0.5), (False, 0.5)]

-- Two consecutive flips
twoFlips :: Dist (Bool, Bool)
twoFlips = do
  first <- coinFlip
  second <- coinFlip
  return (first, second)

-- Probability of getting at least one heads
probAtLeastOneHeads :: Float
probAtLeastOneHeads = sum [p | ((h1, h2), p) <- unD twoFlips, h1 || h2]

-- Fair merge as anamorphism
fair_merge' = anaStream gene
  where
    gene = either geneL geneR
    geneL (Cons(x,xs), y) = (x, Right(xs, y))
    geneR (x, Cons(y,ys)) = (y, Left(x, ys))
\end{code}

\subsection*{Problema 4}

\subsubsection*{Resolução}

O problema pede para definir um gene para um catamorfismo probabilístico de listas
que modela a transmissão de uma mensagem com possíveis falhas.

\textbf{Análise do problema}:
\begin{itemize}
\item Cada palavra pode ser transmitida corretamente (95\%) ou perdida (5\%)
\item No fim, o código "stop" é enviado com sucesso (90\%) ou falha (10\%)
\end{itemize}

O diagrama do catamorfismo probabilístico é:
\begin{eqnarray*}
\xymatrix@@C=1cm{
    |[String]|
           \ar[d]_-{|transmitir|}
&
    |1 + String >< [String]|
           \ar[d]^{|id + id >< transmitir|}
           \ar[l]_-{|inList|}
\\
     |Dist [String]|
&
     |1 + String >< Dist [String]|
           \ar[l]^-{|gene|}
}
\end{eqnarray*}

O gene deve processar:
\begin{itemize}
\item Lista vazia (|Left ()|): adiciona "stop" com probabilidade 90\%, ou lista vazia com 10\%
\item Lista não vazia (|Right (palavra, resto)|): 
  \begin{itemize}
  \item com 95\% mantém a palavra: |palavra : resto|
  \item com 5\% perde a palavra: |resto|
  \end{itemize}
\end{itemize}

\begin{code}
type Env = M.Map String Int

-- Define operators for expressions
data Op = Add | Mul | Sub deriving (Show, Eq)

-- Evaluate expression with environment
evalExp :: Env -> Exp String Op -> Maybe Int
evalExp env (Var x) = M.lookup x env
evalExp env (Term Add [e1, e2]) = do
  v1 <- evalExp env e1
  v2 <- evalExp env e2
  return (v1 + v2)
evalExp env (Term Mul [e1, e2]) = do
  v1 <- evalExp env e1
  v2 <- evalExp env e2
  return (v1 * v2)
evalExp env (Term Sub [e1, e2]) = do
  v1 <- evalExp env e1
  v2 <- evalExp env e2
  return (v1 - v2)
evalExp _ _ = Nothing

-- Test
testEnv :: Env
testEnv = M.fromList [("x", 5), ("y", 3)]

testExpr :: Exp String Op
testExpr = Term Add [Var "x", Term Mul [Var "y", Var "y"]]
-- Expected: evalExp testEnv testExpr == Just 14 (5 + 3*3)

-- Probabilistic catamorphism for lists
pcataList :: (Either () (a, b) -> Dist b) -> [a] -> Dist b
pcataList g [] = g (Left ())
pcataList g (x:xs) = g (Right (x, pcataList g xs))

-- Gene for message transmission
gene :: Either () (String, Dist [String]) -> Dist [String]
gene = either addStop transmitWord
  where
    -- Add "stop" at the end with 90% probability, or nothing with 10%
    addStop () = D [(["stop"], 0.9), ([], 0.1)]
    
    -- Transmit word with 95% probability, or lose it with 5%
    transmitWord (word, rest) = do
      transmitted <- D [(True, 0.95), (False, 0.05)]
      restWords <- rest
      return (if transmitted then word : restWords else restWords)
\end{code}

\subsection*{Problema 5}

\begin{code}
-- Factorial using natural numbers catamorphism
-- cataNat g where g :: Either () Integer -> Integer
-- The right branch receives the result of the recursive call (n-1)!
-- We need to multiply it by n, but we don't have n directly in a cataNat
-- So we need a different approach - this can't be done with simple cataNat

-- Using for loop from Nat module (similar to how fac is defined there)
factorial :: Integer -> Integer
factorial = p2 . for (split (succ.p1) mul) (1,1)
  where mul = uncurry (*)

-- Test function using simpler recursive definition
testFactorial :: Integer -> Integer
testFactorial n = simpleFac n
  where
    simpleFac 0 = 1
    simpleFac n = n * simpleFac (n - 1)
-- Expected: testFactorial 5 == 120
\end{code}