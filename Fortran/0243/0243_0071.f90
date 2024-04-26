PROGRAM MAIN
LOGICAL::a = LOGICAL(.TRUE.)
LOGICAL::b 
b = LOGICAL(.TRUE.)
call check(a, b)
END

subroutine check(x, y)
LOGICAL x, y
print *,x, "--",y
if (x.neqv.y) then
print *,'??? (Error: T->T) ???'
else
print*," T->T OK"
endif
end subroutine
