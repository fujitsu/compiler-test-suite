PROGRAM MAIN
character(LEN=2)::p(3)=MAX((/"AA", "CC", "ZZ"/),(/"BB", "VV", "GG"/))
character(LEN=2)::q(3)
q = MAX((/"AA", "CC", "ZZ"/),(/"BB", "VV", "GG"/))

do i=1,3
call check(p(i),q(i))
enddo

END

subroutine check(x,y)
character(LEN=2) x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in max value ???'
else
print*," Max CALCULATION IS  OK"
endif
end subroutine
