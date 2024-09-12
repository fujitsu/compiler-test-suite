subroutine s1(x,v,e)
integer x,v,e
!$omp atomic capture
v=x
x=max(e+1,e)
!$omp end atomic
if (x/=4) print *,101
if (v/=1) print *,102
end subroutine
subroutine s2(x,v,e)
integer x,v,e
!$omp atomic capture
v=x
x=max(e,e+1)
!$omp end atomic
if (x/=4) print *,111
if (v/=1) print *,112
end subroutine
subroutine s11(x,v,e)
integer x,v,e,w
w=1
!$omp atomic capture
v=x
x=max(e+1,-w+e+1)
!$omp end atomic
if (x/=4) print *,121
if (v/=1) print *,122
end subroutine
subroutine si12(x,v,e)
integer x,v,e
!$omp atomic capture
v=x
x=max(1+e-1,e+1)
!$omp end atomic
if (x/=4) print *,131
if (v/=1) print *,132
end subroutine
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

