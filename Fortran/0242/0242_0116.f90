PROGRAM MAIN
character(LEN=3)::p(3)=MIN((/"AAA", "C11", "ZZZ"/),(/"B11", "CDD", "GHZ"/))
character(LEN=3)::q(3)
q = MIN((/"AAA", "C11", "ZZZ"/),(/"B11", "CDD", "GHZ"/))

do i=1,3
call check(p(i),q(i))
enddo

END

subroutine check(x,y)
character(LEN=3) x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in min value ???'
else
print*," Min CALCULATION IS  OK"
endif
end subroutine
