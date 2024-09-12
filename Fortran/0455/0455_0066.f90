subroutine s1
integer x,v
x=1
v=2
!$omp atomic capture
x=x+1
v=x
!$omp end atomic
if (x/=2) print *,104
if (v/=2) print *,105
contains
function nf(k1,k2)
nf=max(k1,k2)
end function
end subroutine
call s1
print *,'pass'
end

