type t
complex:: a
end type
type(t)::cl
type(t)::zl
complex::i
i=-1
zl%a=0
cl%a=1
!$omp atomic capture
i%re=zl%a%re
zl%a%re=cl%a%re
!$omp end atomic
if(i/=0) print *,'err'
print *,'pass'
end
