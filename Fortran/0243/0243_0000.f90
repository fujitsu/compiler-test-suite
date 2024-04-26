PROGRAM MAIN
COMPLEX,PARAMETER::c=(12.1_4, 11.2_4)
REAL::a = abs(c)
call check(a, abs(c))
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
