subroutine s1
integer ::w,d
d=1
w=1
!$omp atomic capture
w=w+1
d=w
!$omp end atomic
if (d/=2) print *,101
w=1
!$omp atomic capture
w=w+1
d=w
!$omp end atomic
if (d/=2) print *,102
contains
function nf(k1,k2)
nf=max(k1,k2)
end function
end subroutine
call s1
print *,'pass'
end

