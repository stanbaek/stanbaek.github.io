# Complex Functions

What is the domain and range of $f(x)=\sqrt{x}$? It's likely that your high school math teacher emphasized that both the domain and range comprise positive real numbers, as illustrated in the plot below:

```{image} ./figures/sqrt_x_real.png
:width: 360
:align: center
```

For engineering students, it's well-known that $\sqrt{x}$ becomes a complex number when $x$ is negative. Consequently, the domain extends across all real numbers, denoted as $(-\infty, \infty)$, and the range encompasses complex numbers, represented as $\mathbb{C}$. Now, let's explore the visualization of $f(x)=\sqrt{x}$. As you're aware, complex numbers can be portrayed in two-dimensional space, where the real part aligns with the $x$-axis, and the imaginary part aligns with the $y$-axis.

Given this, how would you graph $f(x)=\sqrt{x}$? Complex functions need a 3-dimensional representation, as depicted below:

```{image} ./figures/sqrt_x_3d.gif
:width: 360
:align: center
```

Here, the $x$-axis corresponds to the $x$ values, the $y$-axis to the real part, and the $z$-axis to the imaginary part. Notably, when $x$ is positive, $f(x)$ is always real, while when $x$ is negative, $f(x)$ is consistently imaginary. This distinction adds a layer of understanding to the behavior of the complex function across different domains.

Let's explore a complex exponential function given by $f(t)=e^{j\theta}$. This function represents a collection of points on the unit circle. As the parameter 
$\theta$ increases, the complex function $f(\theta)$ traces a counterclockwise path from 1 and completes a full revolution, returning to 1 with each period. 

```{image} ./figures/comp_exp.png
:width: 360
:align: center
```
<br>

Nevertheless, it isn't merely a unit circle. In reality, it takes the form of a helix, where its central axis aligns with $\theta$. It is evident that concerning $\theta$, the real axis corresponds to $\cos\theta$, and the imaginary axis corresponds to $\sin\theta$, as expressed in Euler's identity: $e^{j\theta} = \cos\theta + j\sin\theta$.

```{image} ./figures/comp_exponential.gif
:width: 360
:align: center
```
<br>

Now, contemplate two complex exponential functions with distinct frequencies: $e^{j2\pi t}$ and $e^{j3\pi t}$. When visualized in the complex plane with both real and imaginary axes, the two functions coincide, making it challenging to differentiate between them, as illustrated below.

```{image} ./figures/comp_exp2.png
:width: 420
:align: center
```
<br>

In three-dimensional space, the distinction between the two helixes becomes apparent. The two complex exponential functions are orthogonal to each other, signifying their lack of correlation. This distinction is evident when observing their real and imaginary parts, as depicted below.

```{image} ./figures/comp_exponential2.gif
:width: 420
:align: center
```
<br>

