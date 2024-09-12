!$omp parallel
call s1
!$omp end parallel
print *,'pass'
contains
subroutine s1
integer::a,c,d,e
!$omp atomic write
a=dot_product([1,2,3],[2,3,4])
if(a/=20) print *,'err'
!$omp atomic read
d=a
!$omp atomic 
d=dot_product([1,2,3],[2,3,4])*d
if(d/=400) print *,'err1'
!$omp atomic capture
c=d
d=dot_product([1,2,3],[2,3,4])*d
!$omp end atomic
if(c/=400) print *,'err2'
if(d/=8000) print *,'err3'
!$omp atomic capture
d=dot_product([1,2,3],[2,3,4])*d
e=d
!$omp end atomic
if(d/=e) print *,'err4'
end subroutine 
end

