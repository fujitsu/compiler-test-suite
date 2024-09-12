PROGRAM MAIN
COMPLEX*16,PARAMETER::c=(22.1_8, 33.2_8)
COMPLEX*16::a = COS(c)
call check(a, COS(c))
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
