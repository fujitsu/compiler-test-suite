PROGRAM MAIN
REAL::a = AINT(501.2_8, 4)
call check(a, AINT(501.2_8, 4))
END

subroutine check(x, y)
REAL x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R8->R) ???'
else
print*," R8->R OK"
endif
end subroutine
