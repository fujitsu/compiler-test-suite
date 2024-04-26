PROGRAM MAIN
character(LEN=2),DIMENSION(1:3)::p=MAX((/"11", "A", "15"/),(/"10","C","12"/))
character(LEN=2),DIMENSION(1:3)::q
q = MAX((/"11", "A", "15"/),(/"10","C","12"/))


do i=1,3
call check(p(i),q(i))
enddo

END

subroutine check(x,y)
character(LEN=2) x,y
print *,x, " -- ",y
if (x.ne.y) then
print *,'??? Error in max value ???'
else
print*," MAX CALCULATION IS  OK"
endif
end subroutine
