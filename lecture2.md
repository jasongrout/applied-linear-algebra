# (DRAFT) Lecture 2: Orthogonal Vectors and Matrices

The set of complex numbers is denoted $\mathbb{C}$.  The conjugate of the complex number $z=a+bi$ is $\bar z = a-bi$.

## In-class activities

<div class="exercise">
<!-- Needed for Text Exercise 2.3 -->
Show that if $z\bar z = z^2$, then $z$ must be a real number (i.e.,
the imaginary part of $z$ is 0).
</div>

<div class="exercise">
#. Let $A=\begin{bmatrix}4&4+i&2+i\\1-i&2-i&5\end{bmatrix}$.  What is
   $A^*$?  Is $A$ hermitian?
#. Let $B=\begin{bmatrix}2&4+2i\\4-2i&5\end{bmatrix}$.  What is
   $B^*$?  Is $B$ hermitian?
</div>

<div class="exercise">
#. What must be true about diagonal entries of hermitian matrices?
#. Prove that $AA^*$ is always hermitian.
</div>

<div class="asagecell">

```
# Use CDF for complex matrices
A=matrix(CDF, [[4,4+I,2+I],[1-I,2-I,5]])
print A.H # this is A^*
print A.is_hermitian()
print A.H==A
```

</div>

<div class="exercise">
Give an example showing that the inner product on $\mathbb{C}^2$ is
bilinear.
[Hint: compute explicitly each side of the 3 defining equations defining bilinearity.]
</div>

<div class="exercise">
Give an example showing that the (2,1) element of $(AB)^*$ is the same
as the (2,1) element of $B^*A^*$.
</div>

<div class="exercise">
#. Prove that $(AB)^{-1}=B^{-1}A^{-1}$.
#. Prove that $(A^*)^{-1}=(A^{-1})^*$.
</div>

<div class="exercise">
#. What is the angle between $(1,2)$ and $(2,-1)$?  Are these vectors
orthogonal? [Hint: use equation (2.3) for the first question.]
#. Is the set $\{(1/\sqrt{2}, i/\sqrt{2}), (1+i,-1)\}$ orthonormal? Is
it linearly independent?  Remember that now, scalars can be complex numbers.
</div>

<div class="exercise">
Give the reasons why the second equality in equation (2.7) in the text is true.
</div>

<div class="exercise">
Use the Sage cell below, or the Sage notebook, to compute the two
decompositions of $v$ given in equation (2.7).
</div>

<!-- http://forums.xkcd.com/viewtopic.php?f=17&t=64287 gives several -->
<!-- nice ways to get nice orthogonal matrices -->
<div class="asagecell">

```
A=matrix(RDF, [[1,4,3],[2,3,6],[-1,-4,3]])
Q,R=A.QR()

# check that Q is unitary, or in other words, that the columns of Q are
# an orthonormal basis.

(q1,q2,q3) = Q.columns()


# nicer columns
q1=vector(QQ,[2,-2,1])/3
q2=vector(QQ,[2,1,-2])/3
q1=vector(QQ,[1,2,2])/3

```

</div>

<div class="exercise">
Text exercise 2.1
</div>

<div class="exercise">
Text exercise 2.2
</div>

<div class="exercise">
Text exercise 2.3
</div>

<div class="exercise">
Text exercise 2.4.  Additionally, what can be said about the
determinant of a unitary matrix?
</div>

<div class="exercise"> Prove that if $\lambda$ is an eigenvalue of $A$
with eigenvector $\vec x$, then $\lambda^2$ is an eigenvalue of $A^2$
with the same eigenvector $\vec x$.
[Hint: in mathematical notation, if $A\vec x=\lambda x$ for some nonzero vector $\vec x$, then show that $A^2\vec x = \lambda^2 x$].
</div>

<div class="exercise">
Text exercise 2.5
</div>

<div class="exercise">
Text exercise 2.6
</div>

<div class="exercise">
Text exercise 2.7
</div>
