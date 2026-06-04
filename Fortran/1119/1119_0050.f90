type t
integer a
end type
type(t)::cl
type(t)::zl
i=-1
zl%a=0
cl%a=1
!$omp atomic capture
i=zl%a
zl%a=cl%a
!$omp end atomic
if(i/=0) print *,'err'
print *,'pass'
end
