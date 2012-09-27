Lecture 5: More on the SVD
==========================

As mentioned in chapter 4, you can use a Sage
[interact](http://interact.sagemath.org/node/60) example to explore
the SVD for invertible 2 by 2 matrices.  You can also compute the SVD
in Sage.

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
print
print A-U*S*V.H # should be very close to the zero matrix
```

</sagecell>

<div class="exercise">
    Show that if $B$ is an invertible matrix, then
    $\rank(AB)=\rank(A)$ and $\rank(BC)=\rank(C)$ for any matrices $A$
    and $C$ that are the right size for multiplication to be defined.
    This is used in the proof of Theorem 5.1 (and a few other places
    as well).
</div>

<div class="exercise">

Let $A$ be a matrix and $A_k=\sum_{j=1}^k \sigma_j u_j v_j^*$, as
defined in equation (5.4).  Explain why $\norm{A-A_k}_2=\sigma_{k+1}$
if $k\leq\rank(A)$. [Hint: see Theorem 5.3.]

</div>

<div class="exercise">
Let $$A=\begin{bmatrix} 1 & 2 & 3\\4 & 5 & 6\\-1 & 2 & 1\end{bmatrix}$$.

#. Write $A$ as the sum of rank 1 matrices given in equation (5.3).
Show explicitly the elements of the sum.  You might use Sage to
compute the SVD matrices.

#. Calculate the low-rank approximations $A_1$ and $A_2$ according to
 equation (5.4).  Find the distance between $A$ and each of $A_1$ and
 $A_2$, where distance is measured in the matrix 2-norm (i.e., find
 $\norm{A-A_1}_2$ and $\norm{A-A_2}_2$).  Compare these distances to
 the singular values of $A$.

#. Explain why $A_1$ and $A_2$ are so special (i.e., tell us what
 Theorem 5.8 says is significant about $A_1$ and $A_2$ compared to $A$).

</div>

<div class="exercise">
Text exercise 5.1
</div>

<div class="exercise">
Text exercise 5.3
</div>

If you want a challenge, do text exercise 5.2 and think about the
consequences.  Remind me to discuss this.
