PROGRAM MAIN
COMPLEX,PARAMETER::c=(22.1_4, 11.2_4)
COMPLEX::a = CEXP(c)
call check(a, CEXP(c))
END

subroutine check(x, y)
COMPLEX x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: C->C) ???'
else
print*," C->C OK"
endif
end subroutine
