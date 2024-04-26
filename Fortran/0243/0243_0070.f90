PROGRAM MAIN
LOGICAL(KIND=8)::a = LOGICAL(.TRUE., 8)
LOGICAL(KIND=8)::b 
b = LOGICAL(.TRUE.,8)
call check(a, b)
END

subroutine check(x, y)
LOGICAL(KIND=8) x, y
print *,x, "--",y
if (x.neqv.y) then
print *,'??? (Error: T->T8) ???'
else
print*," T->T8 OK"
endif
end subroutine
