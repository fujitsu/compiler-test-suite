module m1
integer::n=2
contains
subroutine s1(x,v,e)
integer x(n,n,n),v,e
!$omp atomic capture
v=x(n,n,n)
x(n,n,n)=-e
!$omp end atomic
if (x(n,n,n)/=-3) print *,101
if (v/=1) print *,102
end subroutine
subroutine s2(x,v,e)
integer x(n,n,n),v,e
!$omp atomic capture
v=x(n,n,n)
x(n,n,n)=-(-e)
!$omp end atomic
if (x(n,n,n)/=3) print *,111
if (v/=1) print *,112
end subroutine
subroutine s11(x,v,e)
integer x(n,n,n),v,e
!$omp atomic capture
v=x(n,n,n)
x(n,n,n)=-(1+e+1)
!$omp end atomic
if (x(n,n,n)/=-5) print *,121
if (v/=1) print *,122
end subroutine
subroutine si12(x,v,e)
integer x(n,n,n),v,e
!$omp atomic capture
v=x(n,n,n)
x(n,n,n)=1+e-1+e
!$omp end atomic
if (x(n,n,n)/=6) print *,131
if (v/=1) print *,132
end subroutine
end
subroutine s
use m1
integer x(n,n,n),v,e
x(n,n,n)=1
v=2
e=3
call s1(x,v,e)
x(n,n,n)=1
v=2
e=3
call s2(x,v,e)
x(n,n,n)=1
v=2
e=3
call s11(x,v,e)
x(n,n,n)=1
v=2
e=3
call si12(x,v,e)
end
call s
print *,'pass'
end
