PROGRAM MAIN
REAL::a = AINT(-1024.4_16, 4)
call check(a, AINT(-1024.4_16, 4))
END

subroutine check(x, y)
REAL x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R16->R) ???'
else
print*," R16->R OK"
endif
end subroutine
