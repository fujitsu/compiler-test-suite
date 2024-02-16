PROGRAM MAIN
REAL*16::a = RRSPACING(0.2_16)
integer :: k = kind(RRSPACING(0.2_16))
REAL*16::b = 0.2_16
call check(a, RRSPACING(b))
call check1(k, kind(RRSPACING(b)))
END

subroutine check(x, y)
REAL*16 x, y
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