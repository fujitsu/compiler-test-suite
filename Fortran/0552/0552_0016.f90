PROGRAM MAIN
COMPLEX*16,PARAMETER::c=(333.1_8, 222.2_8)
COMPLEX*16::a = CDCOS(c)
call check(a, CDCOS(c))
END

subroutine check(x, y)
COMPLEX*16 x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: C16->C16) ???'
else
print*," C16->C16 OK"
endif
end subroutine
