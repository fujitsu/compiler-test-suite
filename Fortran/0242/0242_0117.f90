PROGRAM MAIN
character::p=min("A", "D", "E","F")
character::q
q = min("A", "D", "E","F")

call check(p,q)

END

subroutine check(x,y)
character x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in min value ???'
else
print*," min CALCULATION IS  OK"
endif
end subroutine
