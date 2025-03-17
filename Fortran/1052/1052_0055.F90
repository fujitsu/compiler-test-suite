subroutine s11(x,v,e)
integer x,v,e
integer x1,v1,e1
x1=x
v1=v
e1=e
!$omp atomic capture
x=IAND(x,e)
v=x
!$omp end atomic
x1=IAND(x1,e1)
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
x=IAND(e,x)
v=x
!$omp end atomic
x1=IAND(e1,x1)
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
x=IOR(x,e)
v=x
!$omp end atomic
x1=IOR(x1,e1)
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
x=IOR(e,x)
v=x
!$omp end atomic
x1=IOR(e1,x1)
v1=x1
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
x=IEOR(x,e)
v=x
!$omp end atomic
x1=IEOR(x1,e1)
v1=x1
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
x=IEOR(e,x)
v=x
!$omp end atomic
x1=IEOR(e1,x1)
v1=x1
if (x/=x1) print *,321,x
if (v/=v1) print *,322,v
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
print *,'pass'
end
