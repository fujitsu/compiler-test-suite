PROGRAM MAIN
real::b(2)= min((/1.2, 2.2/),(/3.2, 4.2/))

real::c(2)
c=min((/1.2, 2.2/),(/3.2, 4.2/))

do i=1,2
call check(b(i),c(i))
enddo

END

subroutine check(x,y)
real*4 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in min value ???'
else
print*," min CALCULATION IS  OK"
endif
end subroutine



