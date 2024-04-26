PROGRAM MAIN
LOGICAL(KIND=1)::a = LOGICAL(.TRUE., 1)
LOGICAL(KIND=1)::b 
b = LOGICAL(.TRUE.,1)
call check(a, b)
END

subroutine check(x, y)
LOGICAL(KIND=1) x, y
print *,x, "--",y
if (x.neqv.y) then
print *,'??? (Error: T->T1) ???'
else
print*," T->T1 OK"
endif
end subroutine
