PROGRAM MAIN
LOGICAL(KIND=8)::a = LOGICAL(.FALSE., 8)
LOGICAL(KIND=8)::b 
b = LOGICAL(.FALSE., 8)
call check(a, b)
END

subroutine check(x, y)
LOGICAL(KIND=8) x, y
print *,x, "--",y
if (x.neqv.y) then
print *,'??? (Error: F->F8) ???'
else
print*," F->F8 OK"
endif
end subroutine
