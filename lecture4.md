Lecture 4: The Singular Value Decomposition
===========================================

You can use a Sage example to explore
[SVD](http://interact.sagemath.org/node/60) for invertible 2 by 2
matrices.  You can also compute the SVD in Sage.

<sagecell>

```
# An example of how to compute the SVD of a matrix
A=matrix(CDF, [[1,-2*I], [-I, 3]])
U,S,V = A.SVD()
print U
print
print S
print
print V
print A==U*S*V.H
```

</sagecell>

<div class="exercise">
Using the definition of the SVD given in equation (4.4), show that the largest
singular value $\sigma_1$ of a matrix $A$ is equal to $\norm{A}_2$.
</div>

<div class="exercise">
Text exercise 4.1 (by hand---so show your work and reasoning).
[Hint: You might first determine a vectors that are stretched the most and second-most by the matrix.  Then figure out the matrices that will transform those vectors to $(1,0)$ and $(0,1)$, then stretch appropriately, then rotate them to the final positions.  Remember that singular values must be nonnegative.  Another way to approach the problem is to use equation (4.1)---figure out which vectors are scaled the most and second-most, and where they go.  Check your answer by computing $U\Sigma V^*$.]
</div>

<div class="exercise">
Show that the product of two unitary matrices $U$ and $V$ is also
unitary.
</div>

<div class="exercise">
Text exercise 4.2.
[Hint: Find a way to express the relationship between $A$ and $B$ as matrix multiplication and other matrix operations.]
</div>

<div class="exercise">
Text exercise 4.4
</div>


