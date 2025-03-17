subroutine s11(x,v,e)
integer x,v,e
integer x1,v1,e1
x1=x
v1=v
e1=e
!$omp atomic capture
v=x
x=x+e
!$omp end atomic
v1=x1
x1=x1+e1
if (x/=x1) print *,111,x
if (v/=v1) print *,112,v
end subroutine

subroutine s12(x,v,e)
integer x,v,e
integer x1,v1,e1
x1=x
v1=v
e1=e
!$omp atomic capture
v=x
x=e+x
!$omp end atomic
v1=x1
x1=e1+x1
if (x/=x1) print *,121,x
if (v/=v1) print *,122,v
end subroutine

subroutine s21(x,v,e)
integer x,v,e
integer x1,v1,e1
x1=x
v1=v
e1=e
!$omp atomic capture
v=x
x=x-e
!$omp end atomic
v1=x1
x1=x1-e1
if (x/=x1) print *,211,x
if (v/=v1) print *,212,v
end subroutine

subroutine s22(x,v,e)
integer x,v,e
integer x1,v1,e1
x1=x
v1=v
e1=e
!$omp atomic capture
v=x
x=e-x
!$omp end atomic
v1=x1
x1=e1-x1
if (x/=x1) print *,221,x
if (v/=v1) print *,222,v
end subroutine

subroutine s31(x,v,e)
integer x,v,e
integer x1,v1,e1
x1=x
v1=v
e1=e
!$omp atomic capture
v=x
x=x*e
!$omp end atomic
v1=x1
x1=x1*e1
if (x/=x1) print *,311,x
if (v/=v1) print *,312,v
end subroutine

subroutine s32(x,v,e)
integer x,v,e
integer x1,v1,e1
x1=x
v1=v
e1=e
!$omp atomic capture
v=x
x=e*x
!$omp end atomic
v1=x1
x1=e1*x1
if (x/=x1) print *,321,x
if (v/=v1) print *,322,v
end subroutine

subroutine s41(x,v,e)
integer x,v,e
integer x1,v1,e1
x1=x
v1=v
e1=e
!$omp atomic capture
v=x
x=x/e
!$omp end atomic
v1=x1
x1=x1/e1
if (x/=x1) print *,411,x
if (v/=v1) print *,412,v
end subroutine

subroutine s42(x,v,e)
integer x,v,e
integer x1,v1,e1
x1=x
v1=v
e1=e
!$omp atomic capture
v=x
x=e/x
!$omp end atomic
v1=x1
x1=e1/x1
if (x/=x1) print *,421,x
if (v/=v1) print *,422,v
end subroutine

integer x,v,e
x=1
v=2
e=4
call s11(x,v,e)
x=1
v=2
e=4
call s12(x,v,e)
x=1
v=2
e=4
call s21(x,v,e)
x=1
v=2
e=4
call s22(x,v,e)
x=1
v=2
e=4
call s31(x,v,e)
x=1
v=2
e=4
call s32(x,v,e)
x=1
v=2
e=4
call s41(x,v,e)
x=1
v=2
e=4
call s42(x,v,e)
print *,'pass'
end
