PROGRAM MAIN
character(LEN=3)::p(3)=MAX((/"AAA", "C11", "ZZZ"/),(/"B11", "VDD", "GHH"/))
character(LEN=3)::q(3)
q = MAX((/"AAA", "C11", "ZZZ"/),(/"B11", "VDD", "GHH"/))

do i=1,3
call check(p(i),q(i))
enddo

END

subroutine check(x,y)
character(LEN=3) x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in max value ???'
else
print*," Max CALCULATION IS  OK"
endif
end subroutine
