subroutine s11(x,e)
integer x,e
integer x1,e1
x1=x
e1=e
!$omp atomic
x=x+e
!$omp end atomic
x1=x1+e1
if (x/=x1) print *,111,x
end subroutine

subroutine s12(x,e)
integer x,e
integer x1,e1
x1=x
e1=e
!$omp atomic
x=e+x
!$omp end atomic
x1=e1+x1
if (x/=x1) print *,121,x
end subroutine

subroutine s21(x,e)
integer x,e
integer x1,e1
x1=x
e1=e
!$omp atomic
x=x-e
!$omp end atomic
x1=x1-e1
if (x/=x1) print *,211,x
end subroutine

subroutine s22(x,e)
integer x,e
integer x1,e1
x1=x
e1=e
!$omp atomic
x=e-x
!$omp end atomic
x1=e1-x1
if (x/=x1) print *,221,x
end subroutine

subroutine s31(x,e)
integer x,e
integer x1,e1
x1=x
e1=e
!$omp atomic
x=x*e
!$omp end atomic
x1=x1*e1
if (x/=x1) print *,311,x
end subroutine

subroutine s32(x,e)
integer x,e
integer x1,e1
x1=x
e1=e
!$omp atomic
x=e*x
!$omp end atomic
x1=e1*x1
if (x/=x1) print *,321,x
end subroutine

subroutine s41(x,e)
integer x,e
integer x1,e1
x1=x
e1=e
!$omp atomic
x=x/e
!$omp end atomic
x1=x1/e1
if (x/=x1) print *,411,x
end subroutine

subroutine s42(x,e)
integer x,e
integer x1,e1
x1=x
e1=e
!$omp atomic
x=e/x
!$omp end atomic
x1=e1/x1
if (x/=x1) print *,421,x
end subroutine

integer x,e
x=1
e=4
call s11(x,e)
x=1
e=4
call s12(x,e)
x=1
e=4
call s21(x,e)
x=1
e=4
call s22(x,e)
x=1
e=4
call s31(x,e)
x=1
e=4
call s32(x,e)
x=1
e=4
call s41(x,e)
x=1
e=4
call s42(x,e)
print *,'pass'
end
