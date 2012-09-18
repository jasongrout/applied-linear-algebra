Lecture 3: Norms
================

You can use Sage examples to explore
[unit balls](http://interact.sagemath.org/node/58) and
[induced matrix norms](http://interact.sagemath.org/node/27 induced matrix norms).

<div class="exercise">

Let $\vec v = (1,\,2+3i,\, -4i)$.  Compute $\norm{\vec v}_1$,
$\norm{\vec v}_2$, $\norm{\vec v}_4$, and $\norm{\vec v}_\infty$.  Check your work in Sage.

<sagecell>

```
# An example of how to compute norms of a vector in Sage.
v=vector(CDF, [1,-2*I])
print v.norm(p=3)
print v.norm(p=Infinity)
```

</sagecell>

</div>

<div class="exercise">
Norms give us a way to associate a number with a vector.  The number
may represent something other than physical distances.

A manufacturing robot has costs associated with moving the tip of its
arm.  Moving east or west costs \$2/meter, moving north or south costs
\$3/meter, and moving up or down costs \$5/meter.  A vector $\vec v=(a,b,c)$ 
represents moving $a$ meters east, $b$ meters north, and
$c$ meters up (each number can be negative to move the opposite
direction).

#. Come up with a norm formula that gives the cost for moving along a
 vector $(a,b,c)$.

#. What is the norm of $(1,2,3)$ and $(2,-1,3)$?

</div>

<div class="exercise">

Text exercise 3.1. 

</div>

<div class="exercise">

The text claims in paragraph 3 of page 19 that condition (3) of
equation (3.1) implies that the action of $A$ is determined by its
action on the unit vectors of the domain.  In other words, to find the
maximum stretch that $A$ causes, you only have to look at the unit
vectors of the domain. Explain why this is true.

</div>

<!-- Lab exercise: Estimate the 1, 2, 4, and $\infty$ norms of a -->
<!-- matrix.  Do this for a diagonal matrix, and calculate exactly the -->
<!-- 1-norm and $\infty$-norm, as well as the 2-norm of a single row -->
<!-- -->

<div class="exercise">

Let $A=[a_1\,a_2\,\cdots\,a_n]$ be an $n$ by $n$ matrix with columns
$a_1,a_2,\ldots,a_n$.  Let $x\in \mathbb{C}^n$ be a vector inside the
diamond-shaped 1-norm unit ball in $\mathbb{C}^n$ (i.e.,
$\sum_{j=1}^n\abs{x_j}\leq 1$).  Explain why each of the following
inequalities is true.
[Hint: these inequalities are from the line between equations (3.8) and (3.9) in the text.]

$$\norm{Ax}_1 = \norms{\sum_{j=1}^n x_ja_j}_1 \leq
\sum_{j=1}^n\abs{x_j}\norm{a_j}_1\leq \max_{1\leq j\leq n}\norm{a_j}_1$$

</div>

<div class="exercise">
Prove equation (3.10) in the text is true.
</div>

<!--
<div class="exercise">
We'll prove (3.12) without relying on the more general result (3.11).
We'll prove that if we have vectors $ x, y\in \mathbb{C}^n$, then
$\abs{ x^* y}\leq \norm{ x}_2\norm{ y}_2$.

Let $p(t) = \norm{t x+ y}^2$ be a polynomial with the variable
$t$.

#. Explain why $p(t)\geq 0$ for all $t$.

#. Expand $p(t)$ to be a quadratic polynomial
$at^2+bt+c$. [Hint: remember $\norm{x}^2=x^*x$.]

#. If $p(t)\geq 0$, then from the quadratic formula, $b^2\geq\frac{b^2-4ac}$

</div>
-->

<div class="exercise">
Explain why (3.12) is true, given that equation (2.3) is true.
</div>

<div class="exercise">
Explain why each equality or inequality in equation (3.13) is true.
</div>

<div class="exercise">
Explain why these inequalities that occur just before equation (3.14)
are true:

$$\norm{ABx}_{(\ell)}\leq \norm{A}_{(\ell,m)} \norm{Bx}_{(m)}\leq \norm{A}_{(\ell,m)}\norm{B}_{(m,n)}\norm{x}_{(n)}.$$
</div>

<div class="exercise">
Give an example showing that the inequality in equation (3.14) is not
tight.  In other words, give an induced matrix norm and explicit matrices $A$ and $B$ so that
$\norm{AB}_{(\ell,n)}\neq \norm{A}_{(\ell,m)}\norm{B}_{(m,n)}$.
</div>

<div class="exercise">
Prove equation (3.18).
</div>

<div class="exercise">
Do the following.

#. Either find matrices $A$ and $B$ so that
   $\norm{AB}_F<\norm{A}_F\norm{B}_F$ or show that such an example does
   not exist.
#. Either find matrices $A$ and $B$ so that
   $\norm{AB}_F=\norm{A}_F\norm{B}_F$ or show that such an example does
   not exist.

</div>

<div class="exercise">
Show that if $Q$ is a unitary matrix, then $\norm{QA}_F=\norm{A}_F$.  [Hint: see Theorem 3.1.]
</div>

<div class="exercise">
Text exercise 3.2
</div>

<div class="exercise">
Text exercise 3.3
</div>

You can calculate matrix norms in Sage.  You might use this to check
some of your examples.

<sagecell>

```
# An example of how to compute norms of a matrix in Sage.
A=matrix(CDF, [[1,-2*I], [-I, 3]])
print A.norm(p=1)
print A.norm(p=2)
print A.norm(p=Infinity)
print A.norm(p='frob')
```

</sagecell>
