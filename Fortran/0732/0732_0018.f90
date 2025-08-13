INTEGER A(2,2), R(2,2)
PARAMETER (A = RESHAPE ( (/ 1,4,7,2 /), (/ 2,2 /) ))
R = TRANSPOSE(A)
   write(12,*)R
rewind 12
read(12,*) K1,K2,K3,K4
if (k1/=1)write(6,*) "NG"
if (k2/=7)write(6,*) "NG"
if (k3/=4)write(6,*) "NG"
if (k4/=2)write(6,*) "NG"
print *,'pass'
END
