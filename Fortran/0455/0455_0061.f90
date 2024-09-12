subroutine s1
integer x,v
x=1
!$omp atomic capture
v=x
x=-nf()
!$omp end atomic
if (x/=-1) print *,101
if (v/=1) print *,102
contains
function nf()
nf=1
end function
end subroutine
subroutine s2
integer x,v
n=1
x=1
!$omp atomic capture
v=x
x=-n
!$omp end atomic
if (x/=-1) print *,101
if (v/=1) print *,102
end subroutine
call s1
call s2
print *,'pass'
end

