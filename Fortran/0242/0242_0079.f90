PROGRAM MAIN
character::p=MAX("A", "D", "E","F")
character::q
q = MAX("A", "D", "E","F")

call check(p,q)

END

subroutine check(x,y)
character x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in max value ???'
else
print*," Max CALCULATION IS  OK"
endif
end subroutine
