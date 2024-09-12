PROGRAM MAIN
REAL*8::a = GAMMA(4.2_8)
REAL*8::b = 4.2_8
integer :: k = kind(GAMMA(4.2_8))
call check(a, GAMMA(b))
call check1(k, kind(GAMMA(b)))
END

subroutine check(x, y)
REAL*8 x, y
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
