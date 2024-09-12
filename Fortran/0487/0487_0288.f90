subroutine s1
integer:: a,b,c
a=1
b=1
c=1
!$omp parallel private( a,b, c)
a=2
b=2
c=2
!$omp end parallel
!$omp parallel private( c,b,a)
a=2
b=2
c=2
!$omp end parallel
end
call s1
print *,'pass'
end
