PROGRAM MAIN
COMPLEX*16,PARAMETER::c=(-127.7_8, -111.9_8)
REAL*8::a = abs(c)
call check(a, abs(c))
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
