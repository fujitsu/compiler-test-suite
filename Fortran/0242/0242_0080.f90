PROGRAM MAIN
character::p(3)=MAX((/"A", "C", "Z"/),(/"B","V","G"/))
character::q(3)
q = MAX((/"A", "C", "Z"/),(/"B","V","G"/))

do i=1,3
call check(p(i),q(i))
enddo

END

subroutine check(x,y)
character x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in max value ???'
else
print*," MAX CALCULATION IS  OK"
endif
end subroutine
