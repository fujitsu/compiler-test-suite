PROGRAM MAIN
REAL*8::a = AINT(10.0_16, 8)
call check(a, AINT(10.0_16, 8))
END

subroutine check(x, y)
REAL*8 x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R16->R8) ???'
else
print*," R16->R8 OK"
endif
end subroutine
