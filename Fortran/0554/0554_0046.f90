PROGRAM MAIN
REAL*4::a = GAMMA(.2_4)
REAL*4::b = 0.2_4
integer :: k = kind(GAMMA(.2_4))
call check(a, GAMMA(b))
call check1(k, kind(GAMMA(b)))
END

subroutine check(x, y)
REAL*4 x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R4->R4) ???'
else
print*," R4->R4 OK"
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
