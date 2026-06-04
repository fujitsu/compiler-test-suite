module m1
integer::n=2
type ww
integer x(2,2,2),v,e
end type
type(ww)::g
contains
subroutine s1
!$omp atomic capture
g%v=g%x(n,n,n)
g%x(n,n,n)=max(g%e+1,g%e)
!$omp end atomic
if (g%x(n,n,n)/=4) print *,101
if (g%v/=1) print *,102
end subroutine
subroutine s2
!$omp atomic capture
g%v=g%x(n,n,n)
g%x(n,n,n)=max(g%e,g%e+1)
!$omp end atomic
if (g%x(n,n,n)/=4) print *,111
if (g%v/=1) print *,112
end subroutine
subroutine s11
w=1
!$omp atomic capture
g%v=g%x(n,n,n)
g%x(n,n,n)=max(g%e+1,-w+g%e+1)
!$omp end atomic
if (g%x(n,n,n)/=4) print *,121
if (g%v/=1) print *,122
end subroutine
subroutine s12
!$omp atomic capture
g%v=g%x(n,n,n)
g%x(n,n,n)=max(1+g%e-1,g%e+1)
!$omp end atomic
if (g%x(n,n,n)/=4) print *,131
if (g%v/=1) print *,132
end subroutine
end
subroutine s
use m1
g%x(n,n,n)=1
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
call s12
end
call s
print *,'pass'
end

