# Visualizing Complex Functions

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

Up to this point, our focus has been on unit complex exponential functions. Now, let's turn our attention to a general complex function, particularly

$$ H(\omega) = \frac{13}{13-\omega^2 + j4\omega}$$

In contrast to the unit complex exponential functions discussed earlier, the magnitude and phase of general complex functions do not demonstrate linear changes with varying frequencies. As depicted in the figure below, interpreting the trends of the curves becomes challenging, even in a 3-dimensional plot.

```{image} ./figures/bode_3d.gif
:width: 420
:align: center
```
<br>

A widely embraced strategy to enhance the analysis of complex functions involves decoupling the magnitude and phase components. This separation leads to the creation of two distinct 2-dimensional plots: one showcasing the magnitude and the other illustrating the phase with respect to varying frequencies, as visually represented below.

```{image} ./figures/bode_linear.png
:width: 420
:align: center
```
<br>

These graphical representations are collectively known as **Bode plots**. The Bode plot serves as a valuable tool in understanding how a system responds to different frequencies. When a logarithmic scale is applied, the Bode plot appears as demonstrated in the figure below:

```{image} ./figures/bode_log.png
:width: 420
:align: center
```
<br>

Additionally, when examining the 3-dimensional plot in the real-imaginary plane, it transforms into what is known as the Nyquist plot:

```{image} ./figures/nyquist.png
:width: 420
:align: center
```
<br>

The Nyquist plot, being a parametric representation of a frequency response, finds extensive use in the fields of automatic control and signal processing. It provides valuable insights into the stability and behavior of dynamic systems, making it a crucial tool for engineers and researchers.

