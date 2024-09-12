PROGRAM MAIN
COMPLEX*16,PARAMETER::c=(-1111.7_8, -2222.9_8)
REAL*8::a = CDABS(c)
call check(a, CDABS(c))
END

subroutine check(x, y)
REAL*8 x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: C16->R8) ???'
else
print*," C16->R8 OK"
endif
end subroutine
