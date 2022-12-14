# DCT (Discrete Cosine Transform) Related Experiments

### Introduction of Discrete Cosine Transformation

The one-dimensional discrete cosine transforms (1-D DCTs) is introduced in 1974 by Nasir Ahmed [1] [2] and it becomes one of the commonly used transforms in several research domains, including image texture analysis, image compression, etc, in recent decades. In the topic of image texture analysis, discrete cosine transformation (DCT) is commonly used in feature extraction for image processing. In Mohamed’s research [3], the feature extraction process is performed based on DCT frequency domain. Moreover, in [4], a block-based DCT feature extraction process, which is presented by K Manikantan, et al. is performed for face recognition. Not only on face recognition, feature extraction in DCT frequency domain is used on the various type image classification task. In [5], Donald M. Monro, et al. proposed a DCT based method for iris recognition. In the topic of image compression, a remarkable characteristic of DCT is that it performs very close to the statistically optimum [Karhunen–Loeve transform](https://en.wikipedia.org/wiki/Kosambi%E2%80%93Karhunen%E2%80%93Lo%C3%A8ve_theorem), which completely removes the statistical dependence between transformation coefficients and it brings lots of advantages for compression performance [2] [6] [7]. The coeffcients in DCT frequency domain indicate the different intensity of various type texture, such as horizontal texture, vertical texture and the other direction texture.

### Formulas

Though there are many ways to check the formulas of DCT, I've still listed the formula of 2D DCT / IDCT and 3D DCT / IDCT as follows.

<a name="2D_DCT_IDCT"></a>
<details close><summary><b>2D DCT / IDCT</b></summary>
<p>

For an image block of size $N \times N$, its 2D DCT can be calculated:

$$
\begin{equation}
	\begin{split}
		{X(k_{1}, k_{2})} = {\frac {2}{N}} \epsilon_{k_{1}} \epsilon_{k_{2}} \sum_{{n_1 = 0}}^{N - 1} \sum_{{n_2 = 0}}^{N - 1} x(n_{1}, n_{2}) \\
		\times \cos({\frac {\pi}{2N} (2n_{1} + 1)k_{1}}) \\
		\times \cos({\frac {\pi}{2N} (2n_{2} + 1)k_{2}})
	\end{split}
	\label{eq:2DDCTMainFormula1}
\end{equation}
$$

where

$$
\begin{equation}
	\begin{split}
		k_{1} = 0, 1, \dots, N - 1 \\ 
		k_{2} = 0, 1, \dots, N - 1 \\
		\epsilon_{k_{i}} = 
		\begin{cases}
			\frac{1}{\sqrt{2}} & \text{for $k_{i} = 0$} \\
			1 & \text{otherwise}
		\end{cases}
		i = 1, 2
	\end{split}
	\label{2DDCTMainFormulaDetail1}
\end{equation}
$$

Besides 2D DCT, the 2D IDCT can be expressed as follows:

$$
\begin{equation}
	\begin{split}
		{x(n_{1}, n_{2})} = \sum_{{k_1 = 0}}^{N - 1} \sum_{{k_2 = 0}}^{N - 1} \epsilon_{k_{1}} \epsilon_{k_{2}} X(k_{1}, k_{2}) \\
		\times \cos({\frac {\pi}{2N} (2n_{1} + 1)k_{1}}) \\
		\times \cos({\frac {\pi}{2N} (2n_{2} + 1)k_{2}})
	\end{split}
	\label{2DIDCTMainFormula1}
\end{equation}
$$

The formula above is the version with size $N \times N$ DCT. If the size is not square shaped, the formula of size $N_{1} \times N_{2}$ DCT is listed as follows:

$$
\begin{equation}
	\begin{split}
		{X(k_{1}, k_{2})} = {\frac {2}{ \sqrt{N_{1} N_{2}} }} \epsilon_{k_{1}} \epsilon_{k_{2}} \sum_{{n_1 = 0}}^{N_1 - 1} \sum_{{n_2 = 0}}^{N_2 - 1} x(n_{1}, n_{2}) \\
		\times \cos({\frac {\pi}{2N_{1}} (2n_{1} + 1)k_{1}}) \\
		\times \cos({\frac {\pi}{2N_{2}} (2n_{2} + 1)k_{2}})
	\end{split}
	\label{2DDCTMainFormula2}
\end{equation}
$$

where

$$
\begin{equation}
	\begin{split}
		k_{1} = 0, 1, \dots, N_{1} - 1 \\ 
		k_{2} = 0, 1, \dots, N_{2} - 1 \\
		\epsilon_{k_{i}} = 
		\begin{cases}
			\frac{1}{\sqrt{2}} & \text{for $k_{i} = 0$} \\
			1 & \text{otherwise}
		\end{cases}
		i = 1, 2
	\end{split}
	\label{2DDCTMainFormulaDetail2}
\end{equation}
$$

The formula of size $N_{1} \times N_{2}$ IDCT can be expressed as follows.

$$
\begin{equation}
	\begin{split}
		{x(n_{1}, n_{2})} = \sum_{{k_1 = 0}}^{N_1 - 1} \sum_{{k_2 = 0}}^{N_2 - 1} \epsilon_{k_{1}} \epsilon_{k_{2}} X(k_{1}, k_{2}) \\
		\times \cos({\frac {\pi}{2N_{1}} (2n_{1} + 1)k_{1}}) \\
		\times \cos({\frac {\pi}{2N_{2}} (2n_{2} + 1)k_{2}})
	\end{split}
	\label{2DIDCTMainFormula2}
\end{equation}
$$

</p>
</details>


<a name="3D_DCT_IDCT"></a>
<details close><summary><b>3D DCT / IDCT</b></summary>
<p>

The formulas of 3D discrete cosine transformation are listed as below.

The 3D discrete cosine transformation $X(k_{1}, k_{2}, k_{3})$ of size $N_{1} \times N_{2} \times N_{3}$ is

$$
\begin{equation}
	\begin{split}
		{X(k_{1}, k_{2}, k_{3})} = {\frac {8}{N_{1} N_{2} N_{3}}} \epsilon_{k_{1}} \epsilon_{k_{2}} \epsilon_{k_{3}} \sum_{{n_1 = 0}}^{N_1 - 1} \sum_{{n_2 = 0}}^{N_2 - 1} \sum_{{n_3 = 0}}^{N_3 - 1} x(n_{1}, n_{2}, n_{3}) \\
		\times \cos({\frac {\pi}{2N_{1}} (2n_{1} + 1)k_{1}}) \\
		\times \cos({\frac {\pi}{2N_{2}} (2n_{2} + 1)k_{2}}) \\
		\times \cos({\frac {\pi}{2N_{3}} (2n_{3} + 1)k_{3}})
	\end{split}
	\label{eq:3DDCTMainFormula}
\end{equation}
$$

where

$$
%	Reference: https://tex.stackexchange.com/a/337352/208106
\begin{equation}
	\begin{split}
		k_{1} = 0, 1, \dots, N_{1} - 1 \\ 
		k_{2} = 0, 1, \dots, N_{2} - 1 \\ 
		k_{3} = 0, 1, \dots, N_{3} - 1 \\
		\epsilon_{k_{i}} = 
		\begin{cases}
			\frac{1}{\sqrt{2}} & \text{for $k_{i} = 0$} \\
			1 & \text{otherwise}
		\end{cases}
		i = 1, 2, 3
	\end{split}
	\label{eq:3DDCTMainFormulaDetail}
\end{equation}
$$

The 3D inverse discrete cosine transformation $x(n_{1}, n_{2}, n_{3})$ of size $N_{1} \times N_{2} \times N_{3}$ is

$$
\begin{equation}
	\begin{split}
		{x(n_{1}, n_{2}, n_{3})} = \sum_{{k_1 = 0}}^{N_1 - 1} \sum_{{k_2 = 0}}^{N_2 - 1} \sum_{{k_3 = 0}}^{N_3 - 1} \epsilon_{k_{1}} \epsilon_{k_{2}} \epsilon_{k_{3}} X(k_{1}, k_{2}, k_{3}) \\
		\times \cos({\frac {\pi}{2N_{1}} (2n_{1} + 1)k_{1}}) \\
		\times \cos({\frac {\pi}{2N_{2}} (2n_{2} + 1)k_{2}}) \\
		\times \cos({\frac {\pi}{2N_{3}} (2n_{3} + 1)k_{3}})
	\end{split}
	\label{3DIDCTMainFormula}
\end{equation}
$$

where

$$
%	Reference: https://tex.stackexchange.com/a/337352/208106
\begin{equation}
	\begin{split}
		n_{1} = 0, 1, \dots, N_{1} - 1 \\ 
		n_{2} = 0, 1, \dots, N_{2} - 1 \\ 
		n_{3} = 0, 1, \dots, N_{3} - 1 \\
		\epsilon_{k_{i}} = 
		\begin{cases}
			\frac{1}{\sqrt{2}} & \text{for $k_{i} = 0$} \\
			1 & \text{otherwise}
		\end{cases}
		i = 1, 2, 3
	\end{split}
	\label{3DIDCTMainFormulaDetail}
\end{equation}
$$





</p>
</details>


### The Importance of DCT Coefficients

#### The Experimental Results of Removing DCT Coefficients




# References

[1] Ahmed, N. and Natarajan, T. and Rao, K.R., “Discrete cosine transform,” IEEE Transactions on Computers, vol. C-23, pp. 90–93, January 1974
    
[2] Boussakta, S. and Alshibami, H.O., “Fast algorithm for the 3-d dct-ii,” IEEE Transactions on Signal Processing, vol. 52, pp. 992–1001, April 2004
    
[3] Mohamed Hamid, “Dct-based image feature extraction and its application in image self-recovery and image watermarking,” Master’s thesis, Concordia University,
2016
    
[4] Manikantan, K and Govindarajan, Vaishnavi and Kiran, V Sasi and Ramachandran, S, “Face recognition using block-based dct feature extraction,” Journal of Advanced Computer Science and Technology, vol. 1, no. 4, pp. 266–283, 2012
    
[5] Monro, Donald M. and Rakshit, Soumyadip and Zhang, Dexin, “Dct-based iris recognition,” IEEE Transactions on Pattern Analysis and Machine Intelligence, vol. 29, pp. 586–595, April 2007
    
[6] Ochoa-D., H., and Rao, K.R., Discrete Cosine Transform. CRC Press., 2019
    
[7] Rader, C., “Fast transforms: Algorithms, analyses, applications,” IEEE Transactions on Acoustics, Speech, and Signal Processing, vol. 32, pp. 941–942, August 1984











