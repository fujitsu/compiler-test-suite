PROGRAM MAIN
REAL::a = SET_EXPONENT (15.3_4, 4_4)
integer :: k = kind(SET_EXPONENT (15.3_4, 4_4))
REAL*4::b = 15.3_4
INTEGER*4::c = 4_4
call check(a, SET_EXPONENT (b,c))
call check1(k,kind( SET_EXPONENT (b,c)))
END

subroutine check(x, y)
REAL x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R->R) ???'
else
print*," R->R OK"
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



