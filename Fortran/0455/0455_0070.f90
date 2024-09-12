module m1
contains
subroutine s1(x,v,e)
integer x,v,e
!$omp atomic capture
x=max(x,f(e))
v=x
!$omp end atomic
if (x/=3) print *,101
if (v/=3) print *,102
end subroutine
subroutine s2(x,v,e)
integer x,v,e
!$omp atomic capture
x=max(f(e),x)
v=x
!$omp end atomic
if (x/=3) print *,111
if (v/=3) print *,112
end subroutine
subroutine s11(x,v,e)
integer x,v,e
!$omp atomic capture
x=max(x,f(-1+e+1))
v=x
!$omp end atomic
if (x/=3) print *,121
if (v/=3) print *,122
end subroutine
subroutine si12(x,v,e)
integer x,v,e
!$omp atomic capture
x=max(f(1+e-1),x)
v=x
!$omp end atomic
if (x/=3) print *,131
if (v/=3) print *,132
end subroutine
integer function f(n)
f=n
end function
end
use m1
integer x,v,e
x=1
v=2
e=3
call s1(x,v,e)
x=1
v=2
e=3
call s2(x,v,e)
x=1
v=2
e=3
call s11(x,v,e)
x=1
v=2
e=3
call si12(x,v,e)
print *,'pass'
end

