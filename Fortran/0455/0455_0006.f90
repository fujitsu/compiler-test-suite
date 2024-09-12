module m1
contains
subroutine s1(x,v,e)
integer x,v,e
!$omp atomic capture
v=x
x=-f(e)
!$omp end atomic
if (x/=-3) print *,101
if (v/=1) print *,102
end subroutine
subroutine s2(x,v,e)
integer x,v,e
!$omp atomic capture
v=x
x=f(e)+e
!$omp end atomic
if (x/=6) print *,111
if (v/=1) print *,112
end subroutine
subroutine s11(x,v,e)
integer x,v,e
!$omp atomic capture
v=x
x=-f(-1+e+1)
!$omp end atomic
if (x/=-3) print *,121
if (v/=1) print *,122
end subroutine
subroutine s12(x,v,e)
integer x,v,e
!$omp atomic capture
v=x
x=-f(1+e-1)+e
!$omp end atomic
if (x/=0) print *,131
if (v/=1) print *,132
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
call s12(x,v,e)
print *,'pass'
end

