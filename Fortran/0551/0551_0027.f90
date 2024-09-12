PROGRAM MAIN
COMPLEX,PARAMETER::c=(12.1_4, 11.2_4)
REAL::a = EXP(c)
REAL::b
b = EXP(c)
call check(a, b)
END

subroutine check(x, y)
REAL x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: C->R) ???'
else
print*," C->R OK"
endif
end subroutine
