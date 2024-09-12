subroutine s1
type q
integer x(2),v
end type
type(q)::w,d
integer:: e(4)
d%x(1)=1
d%x(2)=1
w%x(2)=1
!$omp atomic capture
w%x(2)=w%x(2)+1
d%x(2)=w%x(2)
!$omp end atomic
e(1)=d%x(2)
d%x(1)=1
d%x(2)=1
w%x(2)=1
!$omp atomic capture
w%x(2)=w%x(2)+1
d%x(2)=w%x(2)
!$omp end atomic
e(2)=d%x(2)
if (e(1)/=e(2)) print *,301,e(1),e(2)
contains
function nf(k1,k2)
nf=max(k1,k2)
end function
end subroutine
call s1
print *,'pass'
end

