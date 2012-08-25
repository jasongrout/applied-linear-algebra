# Lecture 1

This should primarily be a review of concepts from the first linear algebra class, though there are probably examples you haven't seen before.


<problem>Practice interpreting the index notation, like in equation 1.1.</problem>


Exercises
---------


Define span, linear independence.  A vector space is the span of some vectors.  A basis is a linearly independent spanning set.  The dimension is the size of the basis.

<div class="exercise">
    Which set is vector spaces.  Which arent?  For each vector space, give 2 different bases and the dimension of the vector space.  (Give at least one infinite dimensional vector space).
</div>

<div class="exercise">
    Describe the column space of a matrix geometrically
</div>

<div class="exercise">
    Describe the kernel/nullspace in terms of linear transformations.
</div>

<div class="exercise">
    Let $A$ be a matrix.  Prove that $T(\vec x)=A\vec x$ is a linear transformation.  [Hint: show that it satisfies the two criteria for a linear transformation.]
</div>

<div class="exercise">
Find the matrix $A$ for the linear transformation $T((a,b)) = (2a-3b, 5a)$ so that $T(\vec x)=A\vec x$.
</div>

<div class="exercise">
Show that linear transformations preserve linear combinations.  In other words, show that if $T$ is a linear transformation, then 
$$T(c_1\vec v_1+c_2\vec v_2+\cdots+c_n\vec v_n) = c_1T(\vec v_1)+c_2 T(\vec v_2)+\cdots+c_n T(\vec v_n).$$
</div>

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

<div class="exercise">
Suppose $T\colon \mathbb{R}^2\to \mathbb{R}^2$ is a linear transformation so that $T(\vec u)=(1,2)$ and $T(\vec v)=(-3,4)$.  What is $T(3\vec u+2\vec v)$?
</div>

A coordinate vector $[\vec v]_\mathcal{B}$ relative to an ordered basis $\mathcal{B}$ is a vector of coefficients of the linear combination of basis elements equaling $\vec v$.  In other words, if $\mathcal{B}=\{b_1,b_2,\ldots,b_n\}$ is a basis, then the coordinate vector for a vector $\vec v=c_1\vec b_1+c_2\vec b_2+\cdots+c_n\vec b_n$ is $[\vec v]_\mathcal{B}=(c_1,c_2,\ldots,c_n)$.  One of the huge advantages of using coordinate vectors is that linear transformations on finite dimensional vector spaces can be represented by matrix multiplication of coordinate vectors.

<div class="exercise">
$P_3$ is the vector space of polynomials with degree at most 3.  Let $T\colon P_3\to\mathbb{R}^3$ be the linear transformation $T(p)=(p(x=-1), p(x=0), p(x=1))$ (i.e., evaluate $p$ at $x=-1$, $x=0$, and $x=1$).  For example, $T(3+x-2x^2+5x^3)=(3-1-2-5, 3, 3+1-2+5)=(-5,3,7)$.  Let $\mathcal{B}=\{1,x,x^2,x^3\}$ be a basis for $P_3$.  Find a matrix representing $T$ relative to $\mathcal{B}$ and the standard basis on $\mathbb{R}^3$.
</div>

<div class="exercise">
Express $A\vec x$ as a linear combination of the columns of $A$.
</div>

<div class="exercise">
Express $AB$ as:

#. a linear combination of columns of $A$
#. a linear combinatino of rows of $B$.
#. dot products of rows of $A$ and columns of $B$.
#. What if $B$ is a matrix of all ones?  What does $AB$ compute then?  What does $BA$ compute?

</div>
    
<div class="exercise">
Text exercise 1.1
</div>

<div class="exercise">
Text exercise 1.2
</div>

<div class="exercise">
Text exercise 1.3
</div>

<div class="exercise">
Text exercise 1.4
</div>


Here's an experimental Sage cell:

<div class="mysagecell"><script type="application/sage">
@interact 
def f(n=(0,1)):
    print n
</script>
</div>

