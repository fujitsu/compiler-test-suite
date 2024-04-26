PROGRAM MAIN
COMPLEX*32,PARAMETER::c=(-254.7_16, 330.9_16)
REAL*16::a = abs(c)
call check(a, abs(c))
END

subroutine check(x, y)
REAL*16 x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: C32->R16) ???'
else
print*," C32->R16 OK"
endif
end subroutine
