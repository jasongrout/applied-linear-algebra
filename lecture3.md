(DRAFT) Lecture 3: Norms
========================

This lecture's exercise set is still a rough draft.


<div class="exercise">
Use Sage to explore unit balls in $\mathbb{R}^2$ (see <http://interact.sagemath.org/node/27>)

<sagecell>

```
@interact
def matrix_induced_norm(A=matrix(QQ,2,[1,2,0,2]),p=slider(1,20,1,default=2,label="$p$"),infinity=("$p=\infty$", False),angle=slider(0,2*pi)):
    if infinity:
        n = Infinity
        p = '\infty'
    else:
        n = p
    vector_on_circle = [vector([cos(t),sin(t)]) for t in [0,pi/64,..,2*pi]]
    v=vector([cos(angle), sin(angle)])
    u=(A*v/v.norm(n)).n()
    unit_vectors = [A*v/v.norm(n) for v in vector_on_circle]
    html(r"<h1>$\lVert A\vec v\rVert_{%(p)s} = \lVert %(u)s\rVert_{%(p)s} = %(unorm)s$</h1>"%{'u':u, 'unorm': u.norm(n), 'p': p})
    p=line(unit_vectors)
    p+=polygon(unit_vectors, color='lightblue')
    p+=plot(u)
    show(p)
```

</sagecell>
</div>

<div class="exercise">

Give the norm of $(1,\,2+3i,\, -4i)$ in the $p$-norms for $p=1, 2, 4, \infty$.  Check your work in Sage.

<sagecell>

```

```

</sagecell>

</div>

<div class="exercise">

<!-- TODO: check to make sure this is a norm! -->

Moving east/west costs $2/meter, moving north/south costs $3/meter, and moving up/down costs $5/meter.  A vector $\vec v=(a,b,c)$ represents moving $a$ meters east, $b$ meters north, and $c$ meters up (each number can be negative to move the opposite direction).

#. Come up with a norm formula that gives the cost for moving along a vector.  What is the norm of $(a,b,c)$?

#. What is the norm of $(1,2,3)$ and $(2,-1,3)$?

</div>



