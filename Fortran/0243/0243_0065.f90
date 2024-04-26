PROGRAM MAIN
LOGICAL(KIND=2)::a = LOGICAL(.FALSE., 2)
LOGICAL(KIND=2)::b 
b = LOGICAL(.FALSE., 2)
call check(a, b)
END

subroutine check(x, y)
LOGICAL(KIND=2) x, y
print *,x, "--",y
if (x.neqv.y) then
print *,'??? (Error: F->F2) ???'
else
print*," F->F2 OK"
endif
end subroutine
