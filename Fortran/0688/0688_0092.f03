integer::a
a=1
call ss(a)
print *,'pass'
contains
subroutine ss(a)
integer,optional::a
real::b
!$omp atomic read
b=a
!$omp atomic write
b=a**a
!$omp atomic capture
b=a
a=a*1
!$omp end atomic
!$omp atomic capture
a=a*1
b=a
!$omp end atomic
!$omp atomic update
a=a+1
!$omp end atomic
if(a/=2) print *,'err1'
if(b/=1.0) print *,'err2'
end subroutine
end
