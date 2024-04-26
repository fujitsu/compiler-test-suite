PROGRAM MAIN
LOGICAL(KIND=2)::a = LOGICAL(L=.TRUE., KIND=2)
LOGICAL(KIND=2)::b 
b = LOGICAL(L=.TRUE., KIND = 2)
call check(a, b)
END

subroutine check(x, y)
LOGICAL(KIND=2) x, y
print *,x, "--",y
if (x.neqv.y) then
print *,'??? (Error: T->T2) ???'
else
print*," T->T2 OK"
endif
end subroutine
