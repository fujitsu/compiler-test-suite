subroutine s1
integer x,v
x=1
!$omp atomic capture
v=x
x=nf()
!$omp end atomic
if (x/=1) print *,101
if (v/=1) print *,102
contains
function nf()
nf=1
end function
end subroutine
call s1
print *,'pass'
end

