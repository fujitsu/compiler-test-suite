complex::a(3),b(3)
a=-1
b=-2
block
complex::a,b
a=0
b=0
!$omp atomic capture
a%re=b%im
b%im=1
!$omp end atomic
if(a/=0) print *,'err1',a
if(b/=(0.00000000E+00,1.00000000)) print *,'err2',b
end block
if(any(a/=[-1,-1,-1])) print *,'err3',a
if(any(b/=[-2,-2,-2])) print *,'err4',b
print *,'pass'
end program
