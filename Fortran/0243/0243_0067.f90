PROGRAM MAIN
LOGICAL::a = LOGICAL(.FALSE.)
LOGICAL::b 
b = LOGICAL(.FALSE.)
call check(a, b)
END

subroutine check(x, y)
LOGICAL x, y
print *,x, "--",y
if (x.neqv.y) then
print *,'??? (Error: F->F) ???'
else
print*," F->F OK"
endif
end subroutine
