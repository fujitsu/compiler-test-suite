subroutine s11(x,v,e)
logical x,v,e
logical x1,v1,e1
x1=x
v1=v
e1=e
!$omp atomic capture
v=x
x=x.and.e
!$omp end atomic
v1=x1
x1=x1.and.e1
if (x .neqv. x1) print *,111,x,x1
if (v .neqv. v1) print *,112,v,v1
end subroutine

subroutine s12(x,v,e)
logical x,v,e
logical x1,v1,e1
x1=x
v1=v
e1=e
!$omp atomic capture
v=x
x=e.and.x
!$omp end atomic
v1=x1
x1=e1.and.x1
if (x .neqv.x1) print *,121,x,x1
if (v .neqv.v1) print *,122,v,v1
end subroutine

subroutine s21(x,v,e)
logical x,v,e
logical x1,v1,e1
x1=x
v1=v
e1=e
!$omp atomic capture
v=x
x=x.or.e
!$omp end atomic
v1=x1
x1=x1.or.e1
if (x .neqv.x1) print *,211,x,x1
if (v .neqv.v1) print *,212,v,v1
end subroutine

subroutine s22(x,v,e)
logical x,v,e
logical x1,v1,e1
x1=x
v1=v
e1=e
!$omp atomic capture
v=x
x=e.or.x
!$omp end atomic
v1=x1
x1=e1.or.x1
if (x .neqv.x1) print *,221,x,x1
if (v .neqv.v1) print *,222,v,v1
end subroutine

subroutine s31(x,v,e)
logical x,v,e
logical x1,v1,e1
x1=x
v1=v
e1=e
!$omp atomic capture
v=x
x=x.eqv.e
!$omp end atomic
v1=x1
x1=x1.eqv.e1
if (x .neqv.x1) print *,311,x,x1
if (v .neqv.v1) print *,312,v,v1
end subroutine

subroutine s32(x,v,e)
logical x,v,e
logical x1,v1,e1
x1=x
v1=v
e1=e
!$omp atomic capture
v=x
x=e.eqv.x
!$omp end atomic
v1=x1
x1=e1.eqv.x1
if (x .neqv.x1) print *,321,x,x1
if (v .neqv.v1) print *,322,v,v1
end subroutine

subroutine s41(x,v,e)
logical x,v,e
logical x1,v1,e1
x1=x
v1=v
e1=e
!$omp atomic capture
v=x
x=x.neqv.e
!$omp end atomic
v1=x1
x1=x1.neqv.e1
if (x .neqv.x1) print *,411,x,x1
if (v .neqv.v1) print *,412,v,v1
end subroutine

subroutine s42(x,v,e)
logical x,v,e
logical x1,v1,e1
x1=x
v1=v
e1=e
!$omp atomic capture
v=x
x=e.neqv.x
!$omp end atomic
v1=x1
x1=e1.neqv.x1
if (x .neqv.x1) print *,421,x,x1
if (v .neqv.v1) print *,422,v,v1
end subroutine

logical x,v,e
x=.true.
v=.true.
e=.true.
call s11(x,v,e)
x=.true.
v=.true.
e=.true.
call s12(x,v,e)
x=.true.
v=.true.
e=.true.
call s21(x,v,e)
x=.true.
v=.true.
e=.true.
call s22(x,v,e)
x=.true.
v=.true.
e=.true.
call s31(x,v,e)
x=.true.
v=.true.
e=.true.
call s32(x,v,e)
x=.true.
v=.true.
e=.true.
call s41(x,v,e)
x=.true.
v=.true.
e=.true.
call s42(x,v,e)
print *,'pass'
end
