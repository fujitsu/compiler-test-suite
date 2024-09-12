subroutine s1
integer ::w,d
d=1
w=1
!$omp atomic capture
w=d
d=nf(1,0)
!$omp end atomic
!$omp atomic capture
w=d
d=nf(1,0)
!$omp end atomic
!$omp atomic capture
w=d
d=nf(1,0)
!$omp end atomic
!$omp atomic capture
w=d
d=max(d,0)
!$omp end atomic
contains
function nf(k1,k2)
nf=max(k1,k2)
end function
end subroutine
call s1
print *,'pass'
end

