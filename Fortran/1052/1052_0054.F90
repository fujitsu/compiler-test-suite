subroutine s11(x,v,e)
integer x,v,e
integer x1,v1,e1
x1=x
v1=v
e1=e
!$omp atomic capture
x=max(x,e)
v=x
!$omp end atomic
x1=max(x1,e1)
v1=x1
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
x=max(e,x)
v=x
!$omp end atomic
x1=max(e1,x1)
v1=x1
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
x=min(x,e)
v=x
!$omp end atomic
x1=min(x1,e1)
v1=x1
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
x=min(e,x)
v=x
!$omp end atomic
x1=min(e1,x1)
v1=x1
if (x/=x1) print *,221,x
if (v/=v1) print *,222,v
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
print *,'pass'
end
