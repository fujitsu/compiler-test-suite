PROGRAM MAIN
REAL*8::a = AINT(256.0_8, 8)
call check(a, AINT(256.0_8, 8))
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
