PROGRAM MAIN
REAL::a = AINT(25612.5_4)
call check(a, AINT(25612.5_4))
END

subroutine check(x, y)
REAL x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R->i4) ???'
else
print*," R->i4 OK"
endif
end subroutine
