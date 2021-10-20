# Autocorrelation_of_a_signal
Autocorrelation of signal using Xcorr and Autocorr in Matlab.
A= xcorr(x,y) returns the cross correlation of two discrete time sequences. Cross correlation measures the similarity between a vector x and shifted or lagged copies of vector y, as a function of lag (τ). If X and Y are different function will append zeros to make it same length.
A= xcorr(x) and A= autocorr(x), returns the autocorrelation of the sequence x

Autocorr
It is an autocorrelation after subtracting the mean of sequence and finally normalized.
-autocorr just takes the next N sequences starting from the center point N

Xcorr
xcorr itself calculates cross-correlation, the final result of xcorr is 2 * N-1, 

if the vector x is taken as an example, the length of x is N. Then use autocorr (x, N-1) can get N length results. Using xcorr requires the following steps:
 E = mean(x);
 X2 =x-E;
 c =xcorr(x2);
 d =c./c(N);
 f =d(N:2*N-1);
       It can be seen that it is more convenient to use autocorr for autocorrelation
