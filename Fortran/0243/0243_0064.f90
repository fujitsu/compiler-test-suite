PROGRAM MAIN
LOGICAL(KIND=1)::a = LOGICAL(.FALSE., 1)
LOGICAL(KIND=1)::b 
b = LOGICAL(.FALSE., 1)
call check(a, b)
END

subroutine check(x, y)
LOGICAL(KIND=1) x, y
print *,x, "--",y
if (x.neqv.y) then
print *,'??? (Error: F->F1) ???'
else
print*," F->F1 OK"
endif
end subroutine
