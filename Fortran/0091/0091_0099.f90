PROGRAM MAIN
REAL*8::a=SET_EXPONENT (15.3_8, 4_4)
integer :: k = kind(SET_EXPONENT (15.3_8, 4_4))
REAL*8::b = 15.3_8
INTEGER*4::c = 4_4
call check(a, SET_EXPONENT (b,c))
call check1(k, kind(SET_EXPONENT (b,c)))
END

subroutine check(x, y)
REAL*8  x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R8->R8) ???'
else
print*," R8->R8 OK"
endif
end subroutine

subroutine check1(x, y)
integer x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (KIND Error) ???'
else
print*," KIND OK"
endif
end subroutine





