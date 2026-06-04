integer::a(3),b(3)
a=-1
b=-2
block
integer::a,b
a=0
b=0
!$omp atomic capture
a=b
b=1
!$omp end atomic
if(a/=0) print *,'err1'
if(b/=1) print *,'err2'
end block
if(any(a/=[-1,-1,-1])) print *,'err3'
if(any(b/=[-2,-2,-2])) print *,'err4'
print *,'pass'
end program
