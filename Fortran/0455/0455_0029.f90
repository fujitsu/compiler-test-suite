module m1
integer::n=2
type w
integer x(2,2,2),v,e
end type
type(w)::g
contains
subroutine s1
!$omp atomic capture
g%x(n,n,n)=g%x(n,n,n)+f(g%e)
g%v=g%x(n,n,n)
!$omp end atomic
if (g%x(n,n,n)/=4) print *,101
if (g%v/=4) print *,102
end subroutine
subroutine s2
!$omp atomic capture
g%x(n,n,n)=f(g%e)+g%x(n,n,n)
g%v=g%x(n,n,n)
!$omp end atomic
if (g%x(n,n,n)/=4) print *,111
if (g%v/=4) print *,112
end subroutine
subroutine s11
!$omp atomic capture
g%x(n,n,n)=g%x(n,n,n)+f(-1+g%e+1)
g%v=g%x(n,n,n)
!$omp end atomic
if (g%x(n,n,n)/=4) print *,121
if (g%v/=4) print *,122
end subroutine
subroutine si12
!$omp atomic capture
g%x(n,n,n)=f(1+g%e-1)+g%x(n,n,n)
g%v=g%x(n,n,n)
!$omp end atomic
if (g%x(n,n,n)/=4) print *,131
if (g%v/=4) print *,132
end subroutine
integer function f(n)
f=n
end function
end
subroutine s
use m1
g%x=1
g%v=2
g%e=3
call s1
g%x(n,n,n)=1
g%v=2
g%e=3
call s2
g%x(n,n,n)=1
g%v=2
g%e=3
call s11
g%x(n,n,n)=1
g%v=2
g%e=3
call si12
end
call s
print *,'pass'
end

