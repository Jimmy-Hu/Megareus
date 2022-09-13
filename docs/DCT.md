# DCT (Discrete Cosine Transform) Related Experiments

### Introduction of Discrete Cosine Transformation

The one-dimensional discrete cosine transforms (1-D DCTs) is introduced in 1974 by Nasir Ahmed [1] [2] and it becomes one of the commonly used transforms in several research domains, including image texture analysis, image compression, etc, in recent decades. In the topic of image texture analysis, discrete cosine transformation (DCT) is commonly used in feature extraction for image processing. In Mohamed’s research [3], the feature extraction process is performed based on DCT frequency domain. Moreover, in [4], a block-based DCT feature extraction process, which is presented by K Manikantan, et al. is performed for face recognition. Not only on face recognition, feature extraction in DCT frequency domain is used on the various type image classification task. In [5], Donald M. Monro, et al. proposed a DCT based method for iris recognition. In the topic of image compression, a remarkable characteristic of DCT is that it performs very close to the statistically optimum [Karhunen–Loeve transform](https://en.wikipedia.org/wiki/Kosambi%E2%80%93Karhunen%E2%80%93Lo%C3%A8ve_theorem), which completely removes the statistical dependence between transformation coefficients and it brings lots of advantages for compression performance [2] [6] [7]. The coeffcients in DCT frequency domain indicate the different intensity of various type texture, such as horizontal texture, vertical texture and the other direction texture.

### Formulas

Though there are many ways to check the formulas of DCT, I've still listed the formula of 2D DCT / IDCT and 3D DCT / IDCT as follows.

For an image block of size $$N \times N$$, its 2D DCT can be calculated:

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


### The Importance of DCT Coefficients



# References

[1] Ahmed, N. and Natarajan, T. and Rao, K.R., “Discrete cosine transform,” IEEE Transactions on Computers, vol. C-23, pp. 90–93, January 1974
    
[2] Boussakta, S. and Alshibami, H.O., “Fast algorithm for the 3-d dct-ii,” IEEE Transactions on Signal Processing, vol. 52, pp. 992–1001, April 2004
    
[3] Mohamed Hamid, “Dct-based image feature extraction and its application in image self-recovery and image watermarking,” Master’s thesis, Concordia University,
2016
    
[4] Manikantan, K and Govindarajan, Vaishnavi and Kiran, V Sasi and Ramachandran, S, “Face recognition using block-based dct feature extraction,” Journal of Advanced Computer Science and Technology, vol. 1, no. 4, pp. 266–283, 2012
    
[5] Monro, Donald M. and Rakshit, Soumyadip and Zhang, Dexin, “Dct-based iris recognition,” IEEE Transactions on Pattern Analysis and Machine Intelligence, vol. 29, pp. 586–595, April 2007
    
[6] Ochoa-D., H., and Rao, K.R., Discrete Cosine Transform. CRC Press., 2019
    
[7] Rader, C., “Fast transforms: Algorithms, analyses, applications,” IEEE Transactions on Acoustics, Speech, and Signal Processing, vol. 32, pp. 941–942, August 1984











