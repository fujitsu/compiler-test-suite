PROGRAM MAIN
REAL*8,parameter::b = .2_4
REAL*8::a = ERFC(b)
integer :: k = kind( ERFC(b))
call check(a, ERFC(b))
call check1(k, kind(ERFC(b)))
END

subroutine check(x, y)
REAL*8 x, y
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
