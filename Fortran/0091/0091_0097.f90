PROGRAM MAIN
REAL*16::a=SET_EXPONENT (15.3_16, 4_4)                                                                                       
integer :: k = kind(SET_EXPONENT (15.3_16, 4_4))
REAL*16::b = 15.3_16
INTEGER*4::c = 4_4 
call check(a, SET_EXPONENT (b,c))
call check1(k, kind(SET_EXPONENT (b,c)))
END

subroutine check(x, y)
REAL*16  x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R16->R16) ???'
else
print*," R16->R16 OK"
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



