# Lecture 1

This should primarily be a review of concepts from the first linear
algebra class, though there are probably examples you haven't seen
before.

Practice interpreting the summation notation, like in equation 1.1 and
in other places in the chapter.  This book uses such summation
notation a lot.

<div class="definition">A <span class="term">linear combination</span>
of some vectors is a sum of scalar multiples of the vectors (i.e., $c_1\vec
v_1+c_2\vec v_2+\cdots+c_n\vec v_n$).  A <span class="term">nontrival
linear combination</span> is a linear combination with at least one
nonzero scalar coefficient.

The <span class="term">span</span> of some vectors is the set of all
linear combinations of the vectors (this is a set of vectors).  A set
of vectors is <span class="term">linearly independent</span> if none
of the vectors can be written as a linear combination of the others.
Equivalently, a set of vectors $\{\vec v_1, \vec v_2, \ldots, \vec
v_n\}$ is <span class="term">linearly independent</span> if there is
any nontrivial linear combination that equals the zero vector (i.e.,
there is some nonzero coefficients $c_i$ so that $c_1\vec v_1+c_2\vec
v_2+\cdots +c_n\vec v_n=\vec 0$).

A <span class="term">vector space</span> is the span of some vectors.
Equivalently, a <span class="term">vector space</span> is a set of
vectors that is closed under linear combinations (i.e., any linear
combinations of any vectors in the set are always also in the set).  A <span
class="term">basis</span> for a vector space is a linearly independent
set of vectors that spans the space.  The <span
class="term">dimension</span> of the space is the size of a basis (all
bases of a space have the same size).  </div>

<div class="exercise"> Which of the following sets of vectors are
vector spaces?  If not, give a reason why it is not (i.e., take some
vectors in the set, and give a linear combination of those vectors
that is not in the set).  For each vector space, give two different
bases and the dimension of the vector space.

  #. $\{ (1,2,3)\}$
  #. $\{c(-1,0,1)+(2,1,3)\mid c\in\mathbb{R}\}$
  #. $\{(x,y) \mid x\geq 0 \text{ and } y\geq 0\}$: all vectors in $\mathbb{R}^2$ that have only positive components
  #. $\{(x,y)\mid x=0 \text{ or } y=0\}$: all vectors in $\mathbb{R}^2$ that are on either the $x$ or $y$ axes
  #. $\{(x,y,z)\mid \sqrt{x^2+y^2+z^2}\leq 1\}$: all vectors in
    $\mathbb{R}^3$ that have length less than or equal to 1
  #.  $\{c(1,2,3) \mid c\in\mathbb{R}\}$: all multiples (i.e., linear combinations) of the vector $(1,2,3)$.  The endpoints of these vectors form a line through the origin.
  #. $\{(0,0,0)\}$: just the zero vector (i.e., all linear combinations of the zero vector).  This vector space has only one vector, as opposed to the others which have an infinite number of vectors.
  #. $\{c_1(-1,0,1)+c_2(2,1,2) \mid c_1,c_2\in\mathbb{R}\}$: all linear combinations of $(-1,0,1)$ and $(2,1,2)$. The endpoints of these vectors form a plane through the origin.
  #. $\{c_1(-1,0,1)+c_2(2,1,2)+c_3(-4,-1,0) \mid
  c_1,c_2,c_3\in\mathbb{R}\}$: all linear combinations of $(-1,0,1)$,
  $(2,1,2)$, and $(-4,-1,0)$.  Hint: Since the third vector $(-4,-1,0)$ is actually a linear combination of $(-1,0,1)$ and $(2,1,2)$, $(-4,-1,0)=2(-1,0,1)-(2,1,2)$, any linear combination of the three vectors can actually be written as a linear combination of just the first two vectors.  For example, 
$$\begin{align*}
3(-1,0,1)-2(2,1,2)+2(-4,-1,0)&=3(-1,0,1)-2(2,1,2)+2(2(-1,0,1)-(2,1,2))\\
&=7(-1,0,1)-4(2,1,2).
\end{align*}$$
  #. The set of all polynomials with degree at most 3.
  #. The set of all polynomials with degree equal to 3.
  #. The set of all polynomials.
  #. The set of all 2 by 2 matrices.
  #. The set of all invertible 3 by 3 matrices.
  #. The set of all diagonal 3 by 3 matrices.
  #. The set of all 3 by 3 matrices that are upper triangular.
  #. The set of all 3 by 3 symmetric matrices.
  #. The set of all continuous functions.
  #. The set of all continuous functions such that $f(0)=0$.
  #. The set of all functions with continuous first derivatives.

</div>

<div class="definition">A linear transformation $T\colon V\to W$ is a function from one
vector space to another that:

  * preserves vector addition: $T(\vec x+\vec y) = T(\vec x)+T(\vec
    y)$
  * preserves scalar multiplication: $T(c\vec x) = cT(\vec x)$.
  
</div>

<div class="exercise">
    Let $A$ be a matrix.  Prove that $T(\vec x)=A\vec x$ is a linear
    transformation.
    [Hint: show that it satisfies the two criteria for a linear transformation at the bottom of page 3 of the text.]
</div>

<div class="exercise">
Find the matrix $A$ for the linear transformation $T((a,b)) = (2a-3b, 5a)$ so that $T(\vec x)=A\vec x$.
</div>


You can check your work with Sage (and also see how Sage creates
vectors and matrices) by playing with the example below.  Go ahead and
change the matrix to your matrix.

<sagecell>

```
var('a,b')
v=vector([a,b])
A=matrix(QQ,[[1,2],[3,4]])
print A
print A*v
```

</sagecell>

When you get to this point, ask me to help you draw a diagram
connecting the column space and null space of a matrix $A$ and the
linear transformation $T(\vec x)=A\vec x$.

<div class="exercise">
Show that linear transformations preserve linear combinations.  In other words, show that if $T$ is a linear transformation, then 
$$T(c_1\vec v_1+c_2\vec v_2+\cdots+c_n\vec v_n) = c_1T(\vec v_1)+c_2 T(\vec v_2)+\cdots+c_n T(\vec v_n).$$
</div>

<div class="exercise"> Suppose $T\colon \mathbb{R}^2\to \mathbb{R}^2$
is a linear transformation.  Suppose also that $\vec u,\vec
v\in\mathbb{R}^2$.  Suppose also that $T(\vec u)=(1,2)$ and $T(\vec
v)=(-3,4)$.  What is $T(3\vec u+2\vec v)$?  </div>

<div class="exercise">
Suppose $T\colon \mathbb{R}^2\to \mathbb{R}^2$ is a linear transformation that does the following operations in order:

#. rotates vectors by 90 degrees clockwise, then
#. flips the vectors over the $y$ axis, then
#. stretches things horizontally by a factor of 3.

Answer the following questions:

a. What is $T((1,0))$?
b. What is $T((0,1))$?
c. What is $T(3(1,0)+2(0,1))$?
d. What is $T((a,b))$?
e. What is the matrix $A$ representing $T$, so that $T(\vec x)=A\vec x$?

</div>

Check your work to the above exercise by modifying $A$ and $\vec v$
below and confirming your answers in the first parts of the problem.

<sagecell>

```
v=vector([1,2])
A=matrix(QQ,[[1,2],[3,4]])
print A*v
```

</sagecell>

<div class="definition"> A <span class="term">coordinate vector</span>
$[\vec v]_\mathcal{B}$ relative to an ordered basis $\mathcal{B}$ is a
vector of coefficients of the linear combination of basis elements
equaling $\vec v$.  In other words, if
$\mathcal{B}=\{b_1,b_2,\ldots,b_n\}$ is a basis, then the coordinate
vector for a vector $\vec v=c_1\vec b_1+c_2\vec b_2+\cdots+c_n\vec
b_n$ is $[\vec v]_\mathcal{B}=(c_1,c_2,\ldots,c_n)_\mathcal{B}$.  </div>

<div class="exercise"> Let $\mathcal{B}=\{1,x,x^2\}$ be a basis for
$P_2$, the set of all polynomials with degree at most 2.  

#. Let
$p=2x-x^2$ be a vector in $P_3$.  What is the
coordinate vector $[p]_\mathcal{B}$?
#. What is the polynomial represented by the coordinate vector $(2,3,-4)_\mathcal{B}$?

</div>


One of the huge advantages of using coordinate vectors is that linear
transformations on finite dimensional vector spaces can be computed by
multiplying a matrix and a coordinate vector.

<div class="exercise">
$P_3$ is the vector space of polynomials with degree at most 3.  Let $T\colon P_3\to\mathbb{R}^3$ be the linear transformation $T(p)=(p(x=-1), p(x=0), p(x=1))$ (i.e., evaluate $p$ at $x=-1$, $x=0$, and $x=1$).  For example, $T(3+x-2x^2+5x^3)=(3-1-2-5, 3, 3+1-2+5)=(-5,3,7)$.  Let $\mathcal{B}=\{1,x,x^2,x^3\}$ be a basis for $P_3$.  Find a matrix representing $T$ relative to $\mathcal{B}$ and the standard basis on $\mathbb{R}^3$.
</div>

<sagecell>

```
v=vector([3,1,-2,5])
#fill in A
A=matrix(QQ, [[],[],[]])
A*v # should be (-5,3,7), according to our example above.
```

</sagecell>

<div class="exercise">
Write $A\begin{pmatrix} 1\\2\\3\end{pmatrix}$ as a linear combination of the columns of $A$.
</div>

<div class="exercise">
Do the following.

#. Express the columns of $AB$ as a linear combination of columns of $A$
#. Express the rows of $AB$ as a linear combination of rows of $B$.
#. Express the entries of $AB$ as dot products of rows of $A$ and columns of $B$.
#. What if $B$ is a matrix of all ones?  What does $AB$ compute then?  What does $BA$ compute?

</div>
Check your answer to the last part of the question above about an
all-ones matrix.

<sagecell>

```
A=random_matrix(QQ, 3);
B=ones_matrix(QQ,3)
print A
print
print A*B
```

</sagecell>

    
    
<div class="exercise">
Give short reasons why the text's Theorem 1.3 parts (a), (b), (c), and (d) are equivalent.
</div>

<div class="exercise">
Let $$A=\begin{bmatrix}1&3\\2&5\end{bmatrix},\quad
A^{-1}=\begin{bmatrix}-5&3\\2&-1\end{bmatrix}.$$
Let $\mathcal{B}=\{(1,2),\, (3,5)\}$ be a basis for $\mathbb{R}^2$.

#. Use $A$ to compute the vectors with coordinate vectors
 $(1,0)_\mathcal{B}$, $(0,1)_\mathcal{B}$,
 and $(2,3)_\mathcal{B}$.

#. Use $A^{-1}$ to compute the coordinate vectors
$[(-3,-4)]_\mathcal{B}$ and $[(a,b)]_\mathcal{B}$.

</div>

When you get to this point, ask me to help you modify the diagram we
drew above in order to deal with linear transformations that
correspond to invertible matrices.

<div class="exercise">
Text exercise 1.1
</div>

<div class="exercise">
Text exercise 1.3
</div>

<div class="exercise">
Text exercise 1.4
</div>

