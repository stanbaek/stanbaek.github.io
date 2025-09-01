# 📊 Visualizing Complex Functions

## Visualizing Simple Complex Functions
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

## Visualizing Complex Exponential Functions

Let's explore a complex exponential function given by $f(\theta)=e^{j\theta}$. Initially, this function is often visualized as a trajectory of points on the unit circle. As the parameter $\theta$ varies, the complex function $f(\theta)$ traces a counterclockwise path from 1, completing a full revolution and returning to 1 with each period.

```{image} ./figures/comp_exp.png
:width: 360
:align: center
```
<br>

However, the complexity of this representation goes beyond a mere unit circle. In reality, the trajectory takes the form of a helix, with its central axis aligned with the variable $\theta$. This intricate structure unfolds when we examine the relationship between $\theta$ and the real and imaginary axes.

In the context of $\theta$, the real axis corresponds to $\cos\theta$, and the imaginary axis corresponds to $\sin\theta$, elegantly expressed in Euler's formula: $e^{j\theta} = \cos\theta + j\sin\theta$. The figure below vividly demonstrates the projection of $\cos\theta$ when the real part is plotted against $\theta$ and similarly captures $\sin\theta$ when the imaginary part is plotted.


```{image} ./figures/comp_exponential.gif
:width: 360
:align: center
```
<br>

Now, let's consider two complex exponential functions with distinct frequencies: $e^{j2\pi t}$ and $e^{j3\pi t}$. When visualized in the complex plane with both real and imaginary axes, the two functions coincide, making it challenging to differentiate between them, as illustrated below.

```{image} ./figures/comp_exp2.png
:width: 420
:align: center
```
<br>

The challenge dissolves when we transition into three-dimensional space, where the distinction between the two helixes becomes apparent. The orthogonal orientation of the two complex exponential functions signifies their lack of correlation. This distinction is clearly observable when examining their real and imaginary parts, as depicted in the dynamic visualization below.

```{image} ./figures/comp_exponential2.gif
:width: 420
:align: center
```
<br>

This multi-dimensional perspective provides a more profound understanding of the behavior of complex exponential functions, emphasizing their intricate geometry and the significance of frequency in their representation.

## Visualizing General Complex Functions

Up to this point, our focus has been on unit complex exponential functions. Now, let's turn our attention to a general complex function, particularly

$$ H(\omega) = \frac{13}{13-\omega^2 + j4\omega}$$

In contrast to the unit complex exponential functions discussed earlier, the magnitude and phase of general complex functions do not demonstrate linear changes with varying frequencies. As depicted in the figure below, interpreting the trends of the curves becomes challenging, even in a 3-dimensional plot.

```{image} ./figures/bode_3d.gif
:width: 420
:align: center
```
<br>

A widely embraced strategy to enhance the analysis of complex functions involves decoupling the magnitude and phase components. This separation leads to the creation of two distinct 2-dimensional plots: one showcasing the magnitude, $|H(\omega)|$, and the other illustrating the phase, $\angle H(\omega)$, with respect to varying frequencies, as visually represented below.

```{image} ./figures/bode_linear.png
:width: 420
:align: center
```
<br>

These graphical representations are collectively known as **Bode plots**. It's important to recognize that, a century ago, Bode did not have access to the advanced 3-D rendering tools available today, and consequently, they relied on 2-dimensional visualization.

The Bode plot stands as an invaluable instrument for comprehending a system's response across various frequencies. When employing a logarithmic scale, the Bode plot takes the form illustrated in the figure below:



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


## Visualizing 4-D Complex Functions

Until now, our exploration has centered on complex functions with a real domain ($\mathbb{R}$) and a complex range ($\mathbb{C}$). Let's now delve into complex functions with both a complex domain ($\mathbb{C}$) and a complex range ($\mathbb{C}$). Specifically, we will examine the transfer function characterized by the expression:

$$ H(s) = \frac{s+2}{s^2+2s+s}$$

Here, $s=\sigma+j\omega$ represents a complex number, introducing two variables for the domain and two for the range. Attempting to visualize this function in 3-dimensional space becomes impractical due to the involvement of four independent variables in transfer functions. Consequently, we need to decouple the magnitude and phase components, represented as $|H(s)|$ and $\angle H(s)$, respectively. Although the domain of each component remains complex ($\mathbb{C}$), the range is now real ($\mathbb{R}$). The magnitude response, $|H(s)|$, is commonly referred to as the pole-zero map, often depicted in 2-dimensional space, as shown below.

```{image} ./figures/pzplot.png
:width: 420
:align: center
```
<br>

This representation provides a more manageable visualization, offering valuable insights into the behavior of the complex function across various frequencies and complex values of $s$. It's important to note that this 2-dimensional portrayal is a simplified representation for its corresponding 3-dimensional plot, as depicted below:

```{image} ./figures/pzplot_3d.gif
:width: 420
:align: center
```
<br>


Crucially, the transfer function assumes the role of the frequency response of a system when the real part of $s$ is set to zero, i.e., $s=j\omega$ or $s|_{\sigma=0}=j\omega$. Thus, the red line along the imaginary axis in the 3-D plot represents the frequency response of the system, i.e., $H(s)|_{s=j\omega}=H(j\omega)$. This insight enhances our understanding of the system's characteristics across different frequencies.



Download the MATLAB files to generate the plots used on this page:
- [complex_plots.m](./files/complex_plots.m) : Used for rendering $\sqrt{x}$ and complex exponential functions.
- [FrequencyResponse.m](./files/FrequencyResponse.m): Used for rendering the Bode plots.
- [PlottingPoleZeros.m](./files/PlottingPoleZeros.m): Used for rendering the pole-zero plots.

