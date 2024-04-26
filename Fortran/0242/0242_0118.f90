PROGRAM MAIN
character::p(3)=min((/"A", "C", "Z"/),(/"B","V","G"/))
character::q(3)
q = min((/"A", "C", "Z"/),(/"B","V","G"/))

do i=1,3
call check(p(i),q(i))
enddo

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
