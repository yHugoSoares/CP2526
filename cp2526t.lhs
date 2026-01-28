\documentclass[11pt, a4paper, fleqn]{article}
\usepackage{cp2526t}
\makeindex

%================= lhs2tex=====================================================%
%include polycode.fmt
%%format (bin (n) (k)) = "\Big(\vcenter{\xymatrix@R=1pt{" n "\\" k "}}\Big)"
%format -|- = "+"
%format . = "\comp "
%format .* = "\star " 
%format .&&&. = "\wedge"
%format .<=. = "\leq"
%format .<==>. = "\Leftrightarrow"
%format .=?=. = "\mathbin{\stackrel{\mathrm{?}}{=}}"
%format .==. = "\equiv"
%format .==>. = "\Rightarrow"
%format (ana (g)) = "\ana{" g "}"
%format (ana' (f) (g)) = "\lanabracket\;\!" f "\:" g "\:\!\ranabracket"
%format (anaForest (f) (g)) = "\lanabracket\;\!" f "\:" g "\:\!\ranabracket_{\textit{\tiny F}}"
%format (anaList (g)) = "\anaList{" g "}"
%format (anaLTree (g)) = "\lanabracket\," g "\,\ranabracket"
%format (anaStream (g)) = "\lanabracket\," g "\,\ranabracket"
%format (anaRose (g)) = "\lanabracket\," g "\,\ranabracket_\textit{\tiny R}"
%format (anaTree (f) (g)) = "\lanabracket\;\!" f "\:" g "\:\!\ranabracket_{\textit{\tiny T}}"
%format (cata (f)) = "\llparenthesis\, " f "\,\rrparenthesis"
%format (cata' (f) (g)) = "\llparenthesis\, " f "\:" g "\,\rrparenthesis"
%format (cataBTree (x)) = "\llparenthesis\, " x "\,\rrparenthesis"
%format (cataForest (f) (g)) = "\llparenthesis\, " f "\:" g "\,\rrparenthesis_{\textit{\tiny F}}"
%format (cataFTree (x)) = "\llparenthesis\, " x "\,\rrparenthesis"
%format (cataList (g)) = "\llparenthesis\, " g "\,\rrparenthesis"
%format (cataNat (g)) = "\cataNat{" g "}"
%format (cataRose (x)) = "\llparenthesis\, " x "\,\rrparenthesis_\textit{\tiny R}"
%format (cataTree (f) (g)) = "\llparenthesis\, " f "\:" g "\,\rrparenthesis_{\textit{\tiny T}}"
%format (const (f)) = "\underline{" f "}"
%format (Cp.cond (p) (f) (g)) = "\mcond{" p "}{" f "}{" g "}"
%format (curry (f)) = "\overline{" f "}"
%format (div (x)(y)) = x "\div " y
%format (either (a) (b)) = "\alt{" a "}{" b "}"
%format (fac (n)) = "{" n "!}"
%format (for (f) (i)) = "\for{" f "}\ {" i "}"
%format (frac (a) (b)) = "\frac{" a "}{" b "}"
%format (frac (n)(m)) = "\frac{" n "}{" m "}"
%format (hylo (g) (h)) = "\llbracket\, " g ",\," h "\,\rrbracket"
%format (hylo' (ft) (ff) (gt) (gf)) = "\llbracket\, " ft "\:" ff ",\," gt "\:" gf "\,\rrbracket"
%format (hyloForest (ft) (ff) (gt) (gf)) = "\llbracket\, " ft "\:" ff ",\," gt "\:" gf "\,\rrbracket_{\textit{\tiny F}}"
%format (hyloRose (g) (h)) = "\llbracket\, " g ",\," h "\,\rrbracket_\textit{\tiny R}"
%format (hyloTree (ft) (ff) (gt) (gf)) = "\llbracket\, " ft "\:" ff ",\," gt "\:" gf "\,\rrbracket_{\textit{\tiny T}}"
%format (kcomp (f)(g)) = f "\kcomp " g
%format (lcbr (x)(y)) = "\begin{lcbr}" x "\\" y "\end{lcbr}"
%format (lcbr3 (x)(y)(z)) = "\begin{lcbr}" x "\\" y "\\" z "\end{lcbr}"
%format (plus (f)(g)) = "{" f "}\plus{" g "}"
%format (Prod (a) (b)) = a >< b
%format (Seq (a)) = "{" a "}^{*}"
%format (split (x) (y)) = "\conj{" x "}{" y "}"
%format (square (x)) = x "^2"
%format (uncurry f) = "\uncurry{" f "}"
%format (underbrace (t) (p)) = "\underbrace{" t "}_{" p "}"
%format % = "\mathbin{/}"
%format `minusNat`= "\mathbin{-}"
%format `ominus` = "\mathbin{\ominus}"
%format ++ = "\mathbin{+\!\!+}"
%format <-> = "{\,\leftrightarrow\,}"
%format <|> = "{\,\updownarrow\,}"
%format <$> = "\mathbin{\mathopen{\langle}\$\mathclose{\rangle}}"
%format ==> = "\Longrightarrow "
%format ==> = "\Rightarrow"
%format >< = "\times"
%format >|<  = "\bowtie "
%format |-> = "\mapsto"
%format B_tree = "\mathsf{B}\mbox{-}\mathsf{tree} "
%format cdots = "\cdots "
%format conc = "\mathsf{conc}"
%format delta = "\Delta "
%format Dist = "\fun{Dist}"
%format Either a b = a "+" b
%format fF = "\fun F "
%format fmap = "\mathsf{fmap}"
%format fromRational = " from_\Q "
%format fst = "\p1"
%format FTree = "{\FTree}"
%format i1 = "i_1"
%format i2 = "i_2"
%format inForest = "\mathsf{in}_{Forest}"
%format inFTree = "\mathsf{in}"
%format inLTree = "\mathsf{in}"
%format inNat = "\mathsf{in}"
%format inT = "\mathsf{in}"
%format Integer  = "\mathbb{Z}"
%format inTree = "\mathsf{in}_{Tree}"
%format IO = "\fun{IO}"
%format l2 = "l_2 "
%format Left = "i_1"
%format length = "\length "
%format LTree = "{\LTree}"
%format map = "\map "
%format matrix = "matrix"
%format muB = "\mu "
%format NA   = "\textsc{na}"
%format Nat0 = "\N_0"
%format NB   = "\textbf{NB}"
%format Null = "1"
%format outForest = "\mathsf{out}_{Forest}"
%format outFTree = "\mathsf{out}"
%format outLTree = "\mathsf{out}"
%format outStream = "\mathsf{out}"
%format outT = "\mathsf{out}"
%format outTree = "\mathsf{out}_{Tree}"
%format p1  = "\p1"
%format p2  = "\p2"
%format pi = "\pi "
%format Rational = "\Q "
%format Right = "i_2"
%format snd = "\p2"
%format succ = "\succ "
%format summation = "{\sum}"
%format TLTree = "\mathsf{TLTree}"
%format toRational = " to_\Q "
%format t1 = "t_1 "
%format t2 = "t_2 "
%format t3 = "t_3 "
%format t4 = "t_4 "
%format t5 = "t_5 "
%------------------------------------------------------------------------------%


%====== DEFINIR GRUPO E ELEMENTOS =============================================%

\group{G17}
\studentA{107293}{Hugo Ferreira Soares }
\studentB{106902}{Francisco Ribeiro Martins }

%==============================================================================%

\begin{document}
\sffamily
\setlength{\parindent}{0em}
\emergencystretch 3em
\renewcommand{\baselinestretch}{1.25} 
\input{Cover}
\pagestyle{pagestyle}

\newgeometry{left=25mm,right=20mm,top=25mm,bottom=25mm}
\setlength{\parindent}{1em}

\section*{Preâmbulo}

Em \CP\ pretende-se ensinar a progra\-mação de computadores
como uma disciplina científica. Para isso parte-se de um repertório de \emph{combinadores}
que formam uma álgebra da programação % (conjunto de leis universais e seus corolários)
e usam-se esses combinadores para construir programas \emph{composicionalmente},
isto é, agregando programas já existentes.

Na sequência pedagógica dos planos de estudo dos cursos que têm
esta disciplina, opta-se pela aplicação deste método à programação
em \Haskell\ (sem prejuízo da sua aplicação a outras linguagens
funcionais). Assim, o presente trabalho prático coloca os
alunos perante problemas concretos que deverão ser implementados em
\Haskell. Há ainda um outro objectivo: o de ensinar a documentar
programas, a validá-los e a produzir textos técnico-científicos de
qualidade.

Antes de abordarem os problemas propostos no trabalho, os grupos devem ler
com atenção o anexo \ref{sec:documentacao} onde encontrarão as instruções
relativas ao \emph{software} a instalar, etc.

Valoriza-se a escrita de \emph{pouco} código que corresponda a soluções
simples e elegantes que utilizem os combinadores de ordem superior estudados
na disciplina.

\noindent \textbf{Avaliação}. Faz parte da avaliação do trabalho a sua defesa
por parte dos elementos de cada grupo. Estes devem estar preparados para
responder a perguntas sobre \emph{qualquer} dos problemas deste enunciado.
A prestação \emph{individual} de cada aluno nessa defesa oral será uma componente
importante e diferenciadora da avaliação.

%if False
\begin{code}
{-# OPTIONS_GHC -XNPlusKPatterns #-}
{-# LANGUAGE GeneralizedNewtypeDeriving, DeriveDataTypeable, FlexibleInstances #-}
module Main where
import Cp
import List hiding (fac)
import Nat hiding (aux)
import LTree hiding (merge)
import BTree
-- import Exp
import Probability
-- import Svg hiding (for,dup,fdiv)
import Data.Char
import Data.Ratio
import Data.List hiding (find)
import Control.Monad
-- import Control.Monad.State
import Control.Applicative hiding ((<|>),empty)
import System.Process
import Control.Concurrent

main = undefined
\end{code}
%endif

\Problema

Uma serialização (ou travessia) de uma árvore é uma sua representação sob a forma de uma lista. 
Na biblioteca |BTree| encontram-se as funções de serialização |inordt|, |preordt| e |postordt|,
que fazem as travessias \emph{in-order}, \emph{ pre-order} e \emph{post-order}, respectivamente.
Todas essas travessias são catamorfismos que percorrem a árvore argumento em regime \emph{depth-first}.

Pretende-se agora uma função |bforder| que faça a travessia em regime \emph{breadth-first},
isto é, por níveis.
Por exemplo, para a árvore |t1| dada em anexo e mostrada na figura a seguir,

\begin{center}
	\figura
\end{center}

\noindent a função deverá dar a lista

\begin{spec}
	[5,3,7,1,4,6,8]
\end{spec}

\noindent em que se vê como os níveis |5|, depois |3,7| e finalmente |1,4,6,8| foram percorridos.

Pretendemos propor duas versões dessa função:

\begin{enumerate}
\item	Uma delas envolve um catamorfismo de |BTree|s:
\begin{code}
bfsLevels :: BTree a -> [a]
bfsLevels = concat . levels
\end{code}
Complete a definição desse catamorfismo:
\begin{code}
levels :: BTree a -> [[a]]
levels = cataBTree glevels
\end{code}
\item A segunda proposta,
\begin{code}
bft :: BTree a -> [a] 
\end{code}
deverá basear-se num anamorfismo de listas.
\end{enumerate}
\textbf{Sugestão}: estudar o artigo \cite{Ok00} cujo PDF está incluído no material deste trabalho. 
Quando fizer testes ao seu código pode, se desejar, usar funções disponíveis na biblioteca
|Exp| para visualizar as árvores em GraphViz (formato .dot).

Justifique devidamente a sua resolução, que deverá vir acompanhada de diagramas explicativos.
Como já se disse, valoriza-se a escrita de \emph{pouco} código que corresponda a soluções
simples e elegantes que utilizem os combinadores de ordem superior estudados
na disciplina.



\Problema

Considere a seguinte função em Haskell:
\begin{quote}
\begin{code}
f x = wrapper . worker where
         wrapper = head
         worker 0 = start x
         worker(n+1) = loop x (worker n)

loop x    [s,         h,       k,     j,     m     ] =
          [h / k + s, x^2 * h, k * j, j + m, m + 8 ]

start x = [x,         x^3,     6,     20,    22    ]
\end{code}
\end{quote}
Pode-se provar pela lei de recursividade mútua que |f x n| calcula o seno hiperbólico de |x|,
|sinh x|, para |n| aproximações da sua série de Taylor. 
Faça a derivação da função dada a partir da referida série de Taylor, apresentando todos os cálculos justificativos, tal como se faz para outras funções no capítulo respectivo do texto base desta UC \cite{Ol98-24}.

\Problema

Quem em Braga observar, ao fim da tarde, o tráfego onde a Avenida Clairmont
Fernand se junta à N101, aproximadamente na coordenada \href{https://maps.app.goo.gl/uCbXLsdibYoochr36}{41°33'46.8"N
8°24'32.4"W} --- ver as setas da figura que se segue --- reparará nas sequências
imparáveis (infinitas!) de veículos provenientes dessas vias de circulação.

Mas também irá observar um comportamento interessante por parte dos condutores desses
veículos: por regra, \emph{cada carro numa via deixa passar, à sua frente, exactamente outro carro da outra via}. 

\begin{center}
	\mapa
\end{center}

Este comportamento \emph{civilizado} chama-se \emph{fair-merge} (ou \emph{fair-interleaving})
de duas sequências infinitas, também designadas \emph{streams} em ciência
da computação. Seja dado o tipo dessas sequências em Haskell,
\begin{code}
data Stream a = Cons (a, Stream a) deriving Show  
\end{code}
para o qual se define também:
\begin{code}
outStream (Cons (x,xs)) = (x,xs)
\end{code}
\noindent O referido comportamento civilizado pode definir-se, em Haskell,
da forma seguinte:\footnote{O facto das sequências serem infinitas não nos
deve preocupar, pois em Haskell isso é lidado de forma transparente por \lazy{lazy
evaluation}.}
\begin{code}
fair_merge :: Either (Stream a, Stream a) (Stream a, Stream a) -> Stream a
fair_merge = either h k where
   h (Cons(x,xs), y) = Cons(x , k(xs,y))
   k (x, Cons(y,ys)) = Cons(y , h(x,ys))
\end{code}

Defina |fair_merge| como um \textbf{anamorfismo} de |Stream|s, usando o combinador
\begin{code}
anaStream g = Cons . (id >< (anaStream g)) . g
\end{code}
e a seguinte estratégia:
\begin{itemize}
\item	Derivar a lei \textbf{dual} da recursividade mútua,
\begin{eqnarray}
	|either f g = ana(either h k)| & \equiv & |lcbr (out . f = fF (either f g) . h)(out . g = fF (either f g) . k)|
	\label{eq:fokkinga_dual}
\end{eqnarray}
	tal como se fez, nas aulas, para a que está no formulário.
\item
	Usar (\ref{eq:fokkinga_dual}) na resolução do problema proposto. 
\end{itemize}
Justificar devidamente a resolução, que deverá vir acompanhada de diagramas explicativos.

\Problema

Como se sabe, é possível pensarmos em catamorfismos, anamorfismos etc \emph{probabilísticos},
quer dizer, programas recursivos que dão distribuições como resultados. Por
exemplo, podemos pensar num combinador
\begin{code}
pcataList :: (Either () (a, b) -> Dist b) -> [a] -> Dist b
\end{code}
que é muito parecido com
\begin{spec}
cataList :: (Either () (a, b) -> b) -> [a] -> b
\end{spec}
da biblioteca \List. A principal diferença é que o gene de |pcataList| é uma função probabilística.

Como exemplo de utilização, recorde-se que |cataList (either zero add)| soma todos
os elementos da lista argumento, por exemplo:
\begin{quote}
|cataList (either zero add) [20,10,5] = 35|.
\end{quote}
Considere-se agora a função |padd| (adição probabilística) que,
com probabilidade $90\%$ soma dois números e com probabilidade $10\%$ os subtrai:
\begin{code}
padd(a,b) = D [(a+b,0.9),(a-b,0.1)]
\end{code}
Se se correr
\begin{code}
d4 = pcataList (either pzero padd) [20,10,5] where pzero = return . zero
\end{code}
obter-se-á:
\begin{Verbatim}[fontsize=\small]
35  81.0%
25   9.0%
 5   9.0%
15   1.0%
\end{Verbatim}

Com base neste exemplo, resolva o seguinte
\begin{quote}\em
\textbf{Problema}: Uma unidade militar pretende enviar uma mensagem urgente
a outra, mas tem o aparelho de telegrafia meio avariado. Por experiência,
o telegrafista sabe que a probabilidade de uma palavra se perder (não ser
transmitida) é $5\%$; e que, no final de cada mensagem, o aparelho envia o código
|"stop"|, mas (por estar meio avariado), falha $10\%$ das vezes.

Qual a probabilidade de a palavra |"atacar"| da mensagem 
\begin{quote}
|words "Vamos atacar hoje"|
\end{quote}
se perder, isto é, o resultado da transmissão ser |["Vamos","hoje","stop"]|?
E a de seguirem todas as palavras, mas faltar o |"stop"| no fim? E a da transmissão
ser perfeita?
\end{quote}

Responda a estas perguntas encontrando |gene| tal que
\begin{code}
transmitir = pcataList gene
\end{code}
descreve o comportamento do aparelho.
Justificar devidamente a resolução, que deverá vir acompanhada de diagramas explicativos.
%

\part*{Anexos}

\appendix

\section{Natureza do trabalho a realizar}
\label{sec:documentacao}
Este trabalho teórico-prático deve ser realizado por grupos de 3 alunos.
Os detalhes da avaliação (datas para submissão do relatório e sua defesa
oral) são os que forem publicados na \cp{página da disciplina} na \emph{internet}.

Recomenda-se uma abordagem participativa dos membros do grupo em \textbf{todos}
os exercícios do trabalho, para assim poderem responder a qualquer questão
colocada na \emph{defesa oral} do relatório.

Para cumprir de forma integrada os objectivos do trabalho vamos recorrer
a uma técnica de programa\-ção dita ``\litp{literária}'' \cite{Kn92}, cujo
princípio base é o seguinte:
%
\begin{quote}\em
        Um programa e a sua documentação devem coincidir.
\end{quote}
%
Por outras palavras, o \textbf{código fonte} e a \textbf{documentação} de um
programa deverão estar no mesmo ficheiro.

O ficheiro \texttt{cp2526t.pdf} que está a ler é já um exemplo de
\litp{programação literária}: foi gerado a partir do texto fonte
\texttt{cp2526t.lhs}\footnote{O sufixo `lhs' quer dizer
\emph{\lhaskell{literate Haskell}}.} que encontrará no \MaterialPedagogico\
desta disciplina des\-com\-pactando o ficheiro \texttt{cp2526t.zip}.

Como se mostra no esquema abaixo, de um único ficheiro (|lhs|)
gera-se um PDF ou faz-se a interpretação do código \Haskell\ que ele inclui:

        \esquema

Vê-se assim que, para além do \GHCi, serão necessários os executáveis \PdfLatex\ e
\LhsToTeX. Para facilitar a instalação e evitar problemas de versões e
conflitos com sistemas operativos, é recomendado o uso do \Docker\ tal como
a seguir se descreve.

\section{Docker} \label{sec:docker}

Recomenda-se o uso do \container\ cuja imagem é gerada pelo \Docker\ a partir do ficheiro
\texttt{Dockerfile} que se encontra na diretoria que resulta de descompactar
\texttt{cp2526t.zip}. Este \container\ deverá ser usado na execução
do \GHCi\ e dos comandos relativos ao \Latex. (Ver também a \texttt{Makefile}
que é disponibilizada.)

Após \href{https://docs.docker.com/engine/install/}{instalar o Docker} e
descarregar o referido zip com o código fonte do trabalho,
basta executar os seguintes comandos:
\begin{Verbatim}[fontsize=\small]
    $ docker build -t cp2526t .
    $ docker run -v ${PWD}:/cp2526t -it cp2526t
\end{Verbatim}
\textbf{NB}: O objetivo é que o container\ seja usado \emph{apenas} 
para executar o \GHCi\ e os comandos relativos ao \Latex.
Deste modo, é criado um \textit{volume} (cf.\ a opção \texttt{-v \$\{PWD\}:/cp2526t}) 
que permite que a diretoria em que se encontra na sua máquina local 
e a diretoria \texttt{/cp2526t} no \container\ sejam partilhadas.

Pretende-se então que visualize/edite os ficheiros na sua máquina local e que
os compile no \container, executando:
\begin{Verbatim}[fontsize=\small]
    $ lhs2TeX cp2526t.lhs > cp2526t.tex
    $ pdflatex cp2526t
\end{Verbatim}
\LhsToTeX\ é o pre-processador que faz ``pretty printing'' de código Haskell
em \Latex\ e que faz parte já do \container. Alternativamente, basta executar
\begin{Verbatim}[fontsize=\small]
    $ make
\end{Verbatim}
para obter o mesmo efeito que acima.

Por outro lado, o mesmo ficheiro \texttt{cp2526t.lhs} é executável e contém
o ``kit'' básico, escrito em \Haskell, para realizar o trabalho. Basta executar
\begin{Verbatim}[fontsize=\small]
    $ ghci cp2526t.lhs
\end{Verbatim}

\noindent Abra o ficheiro \texttt{cp2526t.lhs} no seu editor de texto preferido
e verifique que assim é: todo o texto que se encontra dentro do ambiente
\begin{quote}\small\tt
\verb!\begin{code}!
\\ ... \\
\verb!\end{code}!
\end{quote}
é seleccionado pelo \GHCi\ para ser executado.

\section{Em que consiste o TP}

Em que consiste, então, o \emph{relatório} a que se referiu acima?
É a edição do texto que está a ser lido, preenchendo o anexo \ref{sec:resolucao}
com as respostas. O relatório deverá conter ainda a identificação dos membros
do grupo de trabalho, no local respectivo da folha de rosto.

Para gerar o PDF integral do relatório deve-se ainda correr os comando seguintes,
que actualizam a bibliografia (com \Bibtex) e o índice remissivo (com \Makeindex),
\begin{Verbatim}[fontsize=\small]
    $ bibtex cp2526t.aux
    $ makeindex cp2526t.idx
\end{Verbatim}
e recompilar o texto como acima se indicou. (Como já se disse, pode fazê-lo
correndo simplesmente \texttt{make} no \container.)

No anexo \ref{sec:codigo} disponibiliza-se algum código \Haskell\ relativo
aos problemas que são colocados. Esse anexo deverá ser consultado e analisado
à medida que isso for necessário.

Deve ser feito uso da \litp{programação literária} para documentar bem o código que se
desenvolver, em particular fazendo diagramas explicativos do que foi feito e
tal como se explica no anexo \ref{sec:diagramas} que se segue.

\section{Como exprimir cálculos e diagramas em LaTeX/lhs2TeX} \label{sec:diagramas}

Como primeiro exemplo, estudar o texto fonte (\lhstotex{lhs}) do que está a ler\footnote{
Procure e.g.\ por \texttt{"sec:diagramas"}.} onde se obtém o efeito seguinte:\footnote{Exemplos
tirados de \cite{Ol98-24}.}
\begin{eqnarray*}
\start
|
        id = split f g
|
\just\equiv{ universal property }
|
     lcbr(
          p1 . id = f
     )(
          p2 . id = g
     )
|
\just\equiv{ identity }
|
     lcbr(
          p1 = f
     )(
          p2 = g
     )
|
\qed
\end{eqnarray*}

Os diagramas podem ser produzidos recorrendo à \emph{package} \Xymatrix, por exemplo:
\begin{eqnarray*}
\xymatrix@@C=2cm{
    |Nat0|
           \ar[d]_-{|cataNat g|}
&
    |1 + Nat0|
           \ar[d]^{|id + (cataNat g)|}
           \ar[l]_-{|inNat|}
\\
     |B|
&
     |1 + B|
           \ar[l]^-{|g|}
}
\end{eqnarray*}

\section{O mónade das distribuições probabilísticas} \label{sec:probabilities}
%format B = "\mathit B"
%format C = "\mathit C"
Mónades são functores com propriedades adicionais que nos permitem obter
efeitos especiais em progra\-mação. Por exemplo, a biblioteca \Probability\
oferece um mónade para abordar problemas de probabilidades. Nesta biblioteca,
o conceito de distribuição estatística é captado pelo tipo
\begin{eqnarray}
     |newtype Dist a = D {unD :: [(a, ProbRep)]}|
     \label{eq:Dist}
\end{eqnarray}
em que |ProbRep| é um real de |0| a |1|, equivalente a uma escala de $0$ a
$100 \%$.

Cada par |(a,p)| numa distribuição |d::Dist a| indica que a probabilidade
de |a| é |p|, devendo ser garantida a propriedade de  que todas as probabilidades
de |d| somam $100\%$.
Por exemplo, a seguinte distribuição de classificações por escalões de $A$ a $E$,
\[
\begin{array}{ll}
A & \rule{2mm}{3pt}\ 2\%\\
B & \rule{12mm}{3pt}\ 12\%\\
C & \rule{29mm}{3pt}\ 29\%\\
D & \rule{35mm}{3pt}\ 35\%\\
E & \rule{22mm}{3pt}\ 22\%\\
\end{array}
\]
será representada pela distribuição
\begin{code}
d1 :: Dist Char
d1 = D [('A',0.02),('B',0.12),('C',0.29),('D',0.35),('E',0.22)]
\end{code}
que o \GHCi\ mostrará assim:
\begin{Verbatim}[fontsize=\small]
'D'  35.0%
'C'  29.0%
'E'  22.0%
'B'  12.0%
'A'   2.0%
\end{Verbatim}
É possível definir geradores de distribuições, por exemplo distribuições \emph{uniformes},
\begin{code}
d2 = uniform (words "Uma frase de cinco palavras")
\end{code}
isto é
\begin{Verbatim}[fontsize=\small]
     "Uma"  20.0%
   "cinco"  20.0%
      "de"  20.0%
   "frase"  20.0%
"palavras"  20.0%
\end{Verbatim}
distribuição \emph{normais}, eg.\
\begin{code}
d3 = normal [10..20]
\end{code}
etc.\footnote{Para mais detalhes ver o código fonte de \Probability, que é uma adaptação da
biblioteca \PFP\ (``Probabilistic Functional Programming''). Para quem quiser saber mais
recomenda-se a leitura do artigo \cite{EK06}.}
|Dist| forma um \textbf{mónade} cuja unidade é |return a = D [(a,1)]| e cuja composição de Kleisli
é (simplificando a notação)
\begin{spec}
  ((kcomp f g)) a = [(y,q*p) | (x,p) <- g a, (y,q) <- f x]
\end{spec}
em que |g: A -> Dist B| e |f: B -> Dist C| são funções \textbf{monádicas} que representam
\emph{computações probabilísticas}.

Este mónade é adequado à resolução de problemas de \emph{probabilidades e estatística} usando programação funcional, de forma elegante e como caso particular da programação monádica.

\section{Código fornecido}\label{sec:codigo}

\subsection*{Problema 1}

Árvores exemplo:
\begin{code}
t1 :: BTree Int
t1 = Node (5,(Node (3,(Node (1,(Empty,Empty)),Node (4,(Empty,Empty)))),
           Node (7,(Node (6,(Empty,Empty)),Node (8,(Empty,Empty))))))

t2 :: BTree Int
t2 =
  node 1
    (node 2 (node 4 Empty Empty) (node 5 Empty Empty))
    (node 3 (node 6 Empty Empty) (node 7 Empty Empty))

t3 :: BTree Char
t3 =
  node 'A'
    (node 'B' (node 'C' (node 'D' Empty Empty) Empty) Empty)
    (node 'E' Empty Empty)

t4 :: BTree Char
t4 =
  node 'A'
    (node 'B' (node 'C' (node 'D' Empty Empty) Empty) Empty)
    Empty 

t5 :: BTree Int
t5 =
  node 1
   (node 2 (node 4 Empty Empty) Empty)
   (node 3 Empty (node 5 (node 6 Empty Empty) Empty))

node a b c = Node (a,(b,c))
\end{code}

%----------------- Soluções dos alunos -----------------------------------------%

\section{Soluções dos alunos}\label{sec:resolucao}
Os alunos devem colocar neste anexo as suas soluções para os exercícios
propostos, de acordo com o ``layout'' que se fornece.
Não podem ser alterados os nomes ou tipos das funções dadas, mas pode ser
adicionado texto ao anexo, bem como diagramas e/ou outras funções auxiliares
que sejam necessárias.

\noindent
\textbf{Importante}: Não pode ser alterado o texto deste ficheiro fora deste anexo.

\subsection*{Problema 1}

\subsubsection*{1. Catamorfismo de níveis (|levels|)}

\textbf{Objetivo}: Agrupar os elementos de uma árvore binária numa lista de listas, onde cada sublista contém todos os elementos de um determinado nível.

\textbf{Estratégia}: Utilizamos um catamorfismo de árvores binárias, definido como |levels = cataBTree glevels|. Um catamorfismo consome a estrutura recursiva da árvore, substituindo cada construtor (|Empty| e |Node|) por operações definidas no gene.

\textbf{Definição do Gene |glevels|}:

O gene processa os dois casos do tipo |BTree a|:

\begin{itemize} 

\item \textbf{Caso base} (|Empty|): Uma árvore vazia não tem níveis, logo retornamos a lista vazia |[]|.

\item \textbf{Caso recursivo} (|Node (a, (l, r))|): Recebemos o valor da raiz |a| e as listas de níveis já computadas para as subárvores esquerda |l| e direita |r|. A estratégia é:
  \begin{enumerate}
    \item Criar o nível 0 contendo apenas a raiz: |[a]|
    \item Combinar os níveis restantes de ambas as subárvores usando |zipWithPlus|
  \end{enumerate}

\end{itemize}

\textbf{Função auxiliar |zipWithPlus|}: Esta função funde duas listas de listas, concatenando elemento a elemento. Lida com três casos:
\begin{itemize}
  \item Se a lista esquerda está vazia, retorna a direita
  \item Se a lista direita está vazia, retorna a esquerda  
  \item Se ambas têm elementos, concatena as cabeças |(x ++ y)| e aplica recursivamente às caudas
\end{itemize}

Esta abordagem garante que elementos do mesmo nível (inicialmente em subárvores diferentes) sejam unidos numa única lista.

O diagrama do catamorfismo é o seguinte:

\[
\xymatrix{
    |BTree a|
           \ar[r]^-{|outBTree|}
           \ar[d]_-{|levels|}
&
    |1 + a >< (BTree a >< BTree a)|
           \ar[d]^{|id + id >< (levels >< levels)|}
\\
     |[[a]]|
&
     |1 + a >< ([[a]] >< [[a]])|
           \ar[l]^-{|glevels|}
}
\]

glevels = [[],comb]


Onde comb(a,(L,D))=[a]:zipWith (++) L D.
\begin{itemize} 

\item |[a]| cria o primeiro nível (a raiz).
\item zipWith (++) junta o nível n da esquerda com o nível n da direita para formar o novo nível n+1.

\end{itemize}

\subsubsection*{2. Anamorfismo de travessia (|bft|)}

\textbf{Objetivo}: Realizar uma travessia \emph{breadth-first} (por largura) de uma árvore binária, produzindo uma lista com os elementos ordenados por níveis.

\textbf{Estratégia}: Implementamos |bft| como um anamorfismo de listas, seguindo a abordagem de Okasaki baseada numa fila (\emph{queue}). Um anamorfismo \emph{gera} uma estrutura (neste caso, uma lista) a partir de um estado inicial.

\textbf{Estado}: O estado é uma fila de árvores |[BTree a]| que representa as árvores ainda por processar. Inicialmente, a fila contém apenas a árvore original: |[t]|.

\textbf{Definição do Gene |geneBFT|}:

O gene determina o próximo elemento da lista de saída e o novo estado:

\begin{itemize} 

\item \textbf{Caso 1} (fila vazia |[]|): A travessia terminou. Retornamos |Left ()| para sinalizar o fim da lista.

\item \textbf{Caso 2} (primeiro elemento é |Empty|): Árvores vazias não contribuem com elementos. Ignoramos e processamos recursivamente o resto da fila.

\item \textbf{Caso 3} (primeiro elemento é |Node (a, (l, r))|): 
  \begin{enumerate}
    \item Extraímos o valor da raiz |a| como próximo elemento da lista
    \item Adicionamos as subárvores |l| e |r| ao \textbf{fim} da fila: |ts ++ [l, r]|
    \item Retornamos |Right (a, ts ++ [l, r])|
  \end{enumerate}

\end{itemize}

\textbf{Porque funciona}: Ao adicionar subárvores ao fim da fila (comportamento FIFO - \emph{First In, First Out}), garantimos que todas as árvores de um nível são processadas antes das do nível seguinte. Isto assegura a ordem \emph{breadth-first}.

\textbf{Exemplo}: Para a árvore |t1|, a evolução da fila é:
\begin{verbatim}
[Node 5 ...]          -> 5, fila = [Node 3 ..., Node 7 ...]
[Node 3 ..., ...]     -> 3, fila = [Node 7 ..., Node 1 ..., Node 4 ...]
[Node 7 ..., ...]     -> 7, fila = [Node 1 ..., Node 4 ..., Node 6 ..., Node 8 ...]
...e assim sucessivamente
\end{verbatim}

\begin{code}
glevels = either (const []) (\(a, (ls, rs)) -> [a] : zipWithPlus ls rs)
  where zipWithPlus [] ys = ys
        zipWithPlus xs [] = xs
        zipWithPlus (x:xs) (y:ys) = (x ++ y) : zipWithPlus xs ys

bft t = anaList geneBFT [t]
  where geneBFT [] = Left ()
        geneBFT (Empty : ts) = geneBFT ts
        geneBFT (Node (a, (l, r)) : ts) = Right (a, ts ++ [l, r])
\end{code}

\subsection*{Problema 2}

\subsubsection*{Resolução Teórica}

\textbf{Objetivo}: Calcular o seno hiperbólico de |x| usando |n| termos da sua série de Taylor, de forma eficiente.

\textbf{Série de Taylor do |sinh|}:
\begin{eqnarray*}
\sinh(x) = \sum_{i=0}^{\infty} a_i \quad \text{onde} \quad a_i = \frac{x^{2i+1}}{(2i+1)!}
\end{eqnarray*}

Os primeiros termos são:
\begin{eqnarray*}
a_0 &=& \frac{x^1}{1!} = x \\
a_1 &=& \frac{x^3}{3!} = \frac{x^3}{6} \\
a_2 &=& \frac{x^5}{5!} = \frac{x^5}{120} \\
a_3 &=& \frac{x^7}{7!} = \frac{x^7}{5040}
\end{eqnarray*}

\textbf{Problema}: Calcular cada termo independentemente seria muito ineficiente (fatoriais e potências crescem rapidamente).

\textbf{Solução}: Usar uma relação de recorrência. Observando a relação entre termos consecutivos:
\begin{eqnarray*}
\frac{a_{i+1}}{a_i} = \frac{x^{2(i+1)+1}}{(2(i+1)+1)!} \cdot \frac{(2i+1)!}{x^{2i+1}} = \frac{x^2}{(2i+2)(2i+3)}
\end{eqnarray*}

Portanto: $a_{i+1} = a_i \cdot \frac{x^2}{(2i+2)(2i+3)}$

\textbf{Estratégia de implementação}: Mantemos acumuladores para:
\begin{itemize}
    \item $s$: Soma acumulada dos termos já calculados
    \item $h$: Numerador do próximo termo (potência de $x$)
    \item $k$: Denominador do próximo termo (fatorial)
    \item $j$: Multiplicador para atualizar o fatorial: $(2i+2)(2i+3)$
    \item $m$: Incremento para $j$ (aumenta 8 a cada iteração)
\end{itemize}

\textbf{Derivação das relações}:
\begin{eqnarray*}
h_i &=& x^{2i+1} \quad \Rightarrow \quad h_{i+1} = h_i \cdot x^2 \\
k_i &=& (2i+1)! \quad \Rightarrow \quad k_{i+1} = k_i \cdot (2i+2)(2i+3) \\
j_i &=& (2i+2)(2i+3) = 4i^2 + 10i + 6 \\
j_{i+1} - j_i &=& 4(i+1)^2 + 10(i+1) + 6 - (4i^2 + 10i + 6) = 8i + 14 \\
\text{(simplificando)} \quad m_i &=& 8i + 14 \quad \text{(começa em 22 para } i=1\text{)}
\end{eqnarray*}

O catamorfismo de números naturais (|worker|) evolui conforme o seguinte diagrama:

\[
\xymatrix{
    |Nat0|
           \ar[r]^-{|outNat|}
           \ar[d]_-{|worker|}
&
    |1 + Nat0|
           \ar[d]^{|id + worker|}
\\
     |[Double]|
&
     |1 + [Double]|
           \ar[l]^-{|either (const (start x)) (loop x)|}
}
\]



\textbf{Análise das Componentes do Estado:}

Para $n=0$, o estado inicial é |start x = [x, x^3, 6, 20, 22]|, correspondendo a |[s, h, k, j, m]|:
\begin{itemize}
    \item $s = x$: Soma já contém $a_0 = x$ (primeiro termo da série)
    \item $h = x^3$: Numerador pronto para calcular $a_1 = \frac{x^3}{6}$
    \item $k = 6 = 3!$: Denominador para $a_1$
    \item $j = 20 = 4 \cdot 5$: Multiplicador para obter $5! = 3! \cdot 4 \cdot 5$ (necessário para $a_2$)
    \item $m = 22$: Incremento para $j$ (de 20 para $6 \cdot 7 = 42$ na próxima iteração)
\end{itemize}

\textbf{Iteração do |loop|}: A cada chamada, |loop x [s, h, k, j, m]| calcula:
\begin{itemize}
    \item Novo $s$: soma acumulada mais o termo atual $\frac{h}{k}$
    \item Novo $h$: multiplica por $x^2$ para a próxima potência
    \item Novo $k$: multiplica por $j$ para o próximo fatorial
    \item Novo $j$: incrementa por $m$ para manter a sequência correta
    \item Novo $m$: incrementa 8 para o próximo salto
\end{itemize}

\textbf{Exemplo de execução} para |f 1.0 2|:
\begin{verbatim}
Iteracao 0: [1.0, 1.0, 6, 20, 22]
Iteracao 1: [1.0 + 1.0/6, 1.0, 120, 42, 30]     = [1.1667, 1.0, 120, 42, 30]
Iteracao 2: [1.1667 + 1.0/120, 1.0, 5040, 72, 38] = [1.175, 1.0, 5040, 72, 38]
\end{verbatim}

Resultado: |head [1.175, ...] = 1.175|, próximo de $\sinh(1.0) \approx 1.1752$

O |wrapper| (função |head|) extrai o primeiro elemento da lista final, que contém a soma de todos os |n+1| termos da série.

\subsubsection*{Implementação}

\begin{code}
f :: Double -> Int -> Double
f x n = wrapper (worker x n)
  where
    wrapper = head
    worker x = cataNat (either (const (start x)) (loop x))
    start x = [x, x^3, 6, 20, 22]
    loop x [s, h, k, j, m] = [s + h/k, x^2 * h, k * j, j + m, m + 8]

sumList :: Num a => [a] -> a
sumList = cataList (either (const 0) (uncurry (+)))

productList :: Num a => [a] -> a
productList = cataList (either (const 1) (uncurry (*)))

lengthList :: [a] -> Int
lengthList = cataList (either (const 0) (succ . p2))
\end{code}

\subsection*{Problema 3}

\textbf{Objetivo}: Implementar uma função |fairMerge| que intercala dois streams (listas infinitas) de forma alternada, usando um anamorfismo.

\textbf{Contexto}: O problema é motivado pela situação real de tráfego onde carros de duas vias se intercalam de forma \emph{justa} (cada carro deixa passar um da outra via).

\subsubsection*{Lei de Fokkinga Dual}

\textbf{Propósito}: A Lei de Fokkinga Dual é a versão para anamorfismos da lei de recursividade mútua. Permite fundir dois anamorfismos mutuamente recursivos num único anamorfismo, usando o combinador |either|.

\textbf{Enunciado da lei}:
\begin{eqnarray*}
|either (ana h) (ana k) = ana (either f g)|
\end{eqnarray*}

sob as condições:
\begin{eqnarray*}
|lcbr (out . ana h = fF (either (ana h) (ana k)) . f)(out . ana k = fF (either (ana h) (ana k)) . g)|
\end{eqnarray*}

\textbf{Interpretação}: Dois processos geradores |h| e |k| que se referenciam mutuamente podem ser fundidos num único gerador que escolhe (via |either|) qual comportamento seguir em cada passo.

Para Streams, onde |fF X = A >< X|, isto significa que podemos ter dois geradores que produzem streams alternando entre si, e fundi-los num único anamorfismo.

\subsubsection*{Derivação da Lei de Fokkinga Dual}

A lei dual da recursividade mútua (Fokkinga Dual) fundamenta-se na propriedade universal do produto para anamorfismos. Pretendemos provar que:
\begin{eqnarray}
    |either (ana f) (ana g) = ana (either h k)|
\end{eqnarray}
Assumindo a estrutura de Streams, onde o functor é |fF X = A >< X|, a prova desenrola-se da seguinte forma:

\begin{eqnarray*}
\start
    |lcbr (out . f = fF (either f g) . h)(out . g = fF (either f g) . k)|
%
\just\equiv{ Isomorfismo out/in; Exponencialização }
%
    |lcbr (out . f = (id >< (either f g)) . h)(out . g = (id >< (either f g)) . k)|
%
\just\equiv{ Propriedade Universal do Coproduto (Either) }
%
    |[out . f, out . g] = (id >< (either f g)) . [h, k]|
%
\just\equiv{ Lei da Fusão do Either: [f . i, g . j] = f + g }
%
    |out . [f, g] = (id >< (either f g)) . [h, k]|
%
\just\equiv{ Definição de Anamorfismo (Propriedade Universal) }
%
    |[f, g] = ana [h, k]|
\qed
\end{eqnarray*}

Esta derivação demonstra que o par de processos independentes |f| e |g| pode ser fundido num único anamorfismo cujo gene é a escolha (|either|) entre os dois comportamentos originais. No caso do |fairMerge|, isto permite que o estado alterne entre consumir a "Estrada 1" ou a "Estrada 2".


\subsubsection*{Diagrama do Anamorfismo}

\textbf{Estratégia para |fairMerge|}: 

Em vez de definir |fairMerge| por recursividade mútua (como |h| e |k| no código original), aplicamos a Lei de Fokkinga Dual para obter um único anamorfismo.

O |fairMerge| alterna entre duas streams. O estado do anamorfismo é o par de streams |(Stream a, Stream a)| e, em cada passo, o sistema:
\begin{enumerate}
  \item Retira o elemento da cabeça da primeira stream
  \item Troca a ordem das streams no estado para que na próxima iteração processe a outra
\end{enumerate}

\[
\xymatrix{
    |Stream a|
           \ar[r]^-{|outStream|}
&
    |a >< Stream a|
\\
    |(Stream a, Stream a)|
           \ar[u]^-{|fairMerge|}
           \ar[r]_-{|gene|}
&
    |a >< (Stream a, Stream a)|
           \ar[u]_-{|id >< fairMerge|}
}
\]


\textbf{Análise do Gene:}
O gene do |fairMerge| recebe o estado |(s1, s2)| (par de streams) e:
\begin{enumerate}
  \item Usa |outStream s1| para decompor a primeira stream em cabeça |h| e cauda |t|
  \item Retorna |(h, (s2, t))|, onde:
    \begin{itemize}
      \item |h| é o próximo elemento do stream resultante
      \item |(s2, t)| é o novo estado, com as streams trocadas
    \end{itemize}
\end{enumerate}

\textbf{Porque funciona}: A inversão de |s2| com |t| no novo estado |(s2, t)| garante que:
\begin{itemize}
  \item Na iteração atual, consumimos de |s1| ("Estrada 1")
  \item Na próxima iteração, o estado é |(s2, t)|, logo consumiremos de |s2| ("Estrada 2")
  \item Na iteração seguinte, o estado será |(t, s2')|, voltando a consumir da original |s1|
\end{itemize}

Esta troca sistemática produz a alternância perfeita: $s1_0, s2_0, s1_1, s2_1, s1_2, s2_2, \ldots$

\textbf{Nota sobre |fairMergeM|}: Esta variante usa um parâmetro adicional |p| (probabilidade) para decidir de qual stream consumir, permitindo modelar situações onde a alternância não é perfeita (e.g., tráfego com diferentes prioridades).

\subsubsection*{Implementação}

\begin{code}
fairMerge :: (Stream a, Stream a) -> Stream a
fairMerge = anaStream gene
  where
    gene (s1, s2) = let (h, t) = outStream s1
                    in (h, (s2, t))

fairMergeM :: (Double, (Stream a, Stream a)) -> Stream a
fairMergeM = anaStream geneM
  where
    geneM (p, (s1, s2)) =
      let r = 0.5
      in if p > r
         then let (h, t) = outStream s1 in (h, (p, (s2, t)))
         else let (h, t) = outStream s2 in (h, (p, (s1, t)))
\end{code}

\subsection*{Problema 4}

\textbf{Objetivo}: Modelar o comportamento probabilístico de um aparelho de telegrafia avariado que pode perder palavras durante a transmissão.

\subsubsection*{Resolução Teórica}

\textbf{Modelo}: Usamos um catamorfismo probabilístico |pcataList gene| que, em vez de devolver um resultado determinístico, devolve uma distribuição de probabilidades sobre possíveis resultados.

\textbf{Tipo}: |transmitir :: [String] -> Dist [String]|

O gene processa a mensagem (lista de palavras) recursivamente:

\begin{itemize}
\item \textbf{Caso base} (|Left ()|, lista vazia): 
  
  Chegámos ao fim da mensagem. O aparelho tenta enviar |"stop"|:
  \begin{itemize}
    \item Com probabilidade 90\%: sucesso → resultado é |["stop"]|
    \item Com probabilidade 10\%: falha → resultado é |[]| (sem stop)
  \end{itemize}
  
  Código: |D [(["stop"], 0.9), ([], 0.1)]|

\item \textbf{Caso recursivo} (|Right (w, d)|): 
  
  Recebemos a palavra atual |w| e a distribuição |d| de possíveis continuações (resultado do processamento do resto da lista).
  
  Para cada possível continuação |msg| em |d|, a palavra |w|:
  \begin{itemize}
    \item Com probabilidade 95\%: é transmitida → resultado é |w:msg|
    \item Com probabilidade 5\%: perde-se → resultado é |msg| (sem |w|)
  \end{itemize}
  
  Usamos notação monádica: |do { msg <- d ; D [(w:msg, 0.95), (msg, 0.05)] }|
  
  Isto combina as probabilidades: se |msg| tem probabilidade |p| em |d|, então:
  \begin{itemize}
    \item |w:msg| terá probabilidade $p \times 0.95$
    \item |msg| (sem |w|) terá probabilidade $p \times 0.05$
  \end{itemize}
\end{itemize}

\subsubsection*{Diagrama do Catamorfismo}

\[
\xymatrix{
    |[String]|
           \ar[r]^-{|outList|}
           \ar[d]_-{|transmitir|}
&
    |1 + String >< [String]|
           \ar[d]^{|id + id >< transmitir|}
\\
     |Dist [String]|
&
     |1 + String >< Dist [String]|
           \ar[l]^-{|gene|}
}
\]

\subsubsection*{Cálculo das Probabilidades}

Para a mensagem |words "Vamos atacar hoje" = ["Vamos", "atacar", "hoje"]|:

\begin{itemize}
\item \textbf{Transmissão perfeita}: Manter as 3 palavras ($0.95^3 = 0.857375$) e enviar |"stop"| ($0.9$):
\[P(\text{perfeita}) = 0.857375 \times 0.9 = 0.7716 \text{ (77.16\%)}\]

\item \textbf{Perder "atacar"}: Manter "Vamos" ($0.95$), perder "atacar" ($0.05$), manter "hoje" ($0.95$), enviar |"stop"| ($0.9$):
\[P(\text{perder "atacar"}) = 0.95 \times 0.05 \times 0.95 \times 0.9 = 0.0406 \text{ (4.06\%)}\]

\item \textbf{Todas as palavras mas sem "stop"}: Manter as 3 palavras ($0.857375$) e falhar |"stop"| ($0.1$):
\[P(\text{sem stop}) = 0.857375 \times 0.1 = 0.0857 \text{ (8.57\%)}\]
\end{itemize}

\subsubsection*{Diagrama do Catamorfismo Probabilístico}

O processo de transmissão é modelado por um catamorfismo probabilístico sobre listas. O diagrama ilustra como a estrutura recursiva da mensagem é consumida para gerar uma distribuição estatística de possíveis resultados:

\begin{eqnarray*}
\xymatrix@@C=3cm@@R=1.5cm{
    |[String]| 
           \ar[d]_-{|transmitir|} 
           \ar[r]^-{|outList|} 
& 
    |1 + String >< [String]| 
           \ar[d]^{|id + id >< transmitir|} 
\\
    |Dist [String]| 
& 
    |1 + String >< Dist [String]| 
           \ar[l]^-{|gene|}
}
\end{eqnarray*}

A utilização deste diagrama justifica a composição monádica das probabilidades, onde o gene lida com a incerteza de cada palavra individualmente, propagando o efeito para o resultado global da mensagem.

\textbf{Resposta às questões}:

Para a mensagem |["Vamos", "atacar", "hoje"]|:

\begin{enumerate}
\item \textbf{Probabilidade de perder "atacar": 4.06\%}
  
  Caminho: Vamos (mantida) $\to$ atacar (perdida) $\to$ hoje (mantida) $\to$ stop (enviado)
  
  $P = 0.95 \times 0.05 \times 0.95 \times 0.9 = 0.0406$

\item \textbf{Probabilidade de transmitir todas mas sem "stop": 8.57\%}
  
  Caminho: Vamos (mantida) $\to$ atacar (mantida) $\to$ hoje (mantida) $\to$ stop (falhou)
  
  $P = 0.95^3 \times 0.1 = 0.857375 \times 0.1 = 0.0857$

\item \textbf{Probabilidade de transmissão perfeita: 77.16\%}
  
  Caminho: Vamos (mantida) $\to$ atacar (mantida) $\to$ hoje (mantida) $\to$ stop (enviado)
  
  $P = 0.95^3 \times 0.9 = 0.857375 \times 0.9 = 0.7716$
\end{enumerate}

\textbf{Verificação}: A soma de todas as probabilidades possíveis (há $2^4 = 16$ combinações) deve ser 100\%. Os três casos acima são apenas alguns dos possíveis resultados.


\subsubsection*{Implementação}

\begin{code}
gene :: Either () (String, Dist [String]) -> Dist [String]
gene = either pzero padd
  where
    pzero () = D [(["stop"], 0.9), ([], 0.1)]
    padd (w, d) = do { msg <- d ; D [(w:msg, 0.95), (msg, 0.05)] }\end{code}


%----------------- Índice remissivo (exige makeindex) -------------------------%

\printindex

%----------------- Bibliografia (exige bibtex) --------------------------------%

\bibliographystyle{plain}
\bibliography{cp2526t}

%----------------- Fim do documento -------------------------------------------%
\end{document}
