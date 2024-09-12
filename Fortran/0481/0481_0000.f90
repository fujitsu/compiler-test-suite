subroutine s1
integer a
a=1
iii=1
!$omp atomic capture
a=iii
iii=nf()
!$omp end atomic
if (a/=1) print *,101
contains
function nf()
nf=1
end function
end subroutine
call s1
print *,'pass'
end

