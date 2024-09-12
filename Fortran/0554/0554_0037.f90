PROGRAM MAIN
REAL*8,parameter::b = 4.2_8
REAL*8::a = GAMMA (b)
integer :: k =kind(GAMMA (b))
call check(a, GAMMA (b))
call check1(k, kind(GAMMA (b)))
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
