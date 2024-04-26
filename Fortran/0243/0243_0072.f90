PROGRAM MAIN
LOGICAL,PARAMETER::l = .TRUE.
LOGICAL::a = LOGICAL(l .OR. .NOT. l, 4)
LOGICAL::b 
b = LOGICAL(l .OR. .NOT. l, 4)
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
