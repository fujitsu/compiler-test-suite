PROGRAM MAIN
real*8,parameter::d=min(9823_2,2123_2,3445_2,2221_2,9823.1234_8)
call check(d,min(9823_2,2123_2,3445_2,2221_2,9823.1234_8))
END
 
subroutine check(x,y)
real*8 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in min value ???'
else
print*," min CALCULATION IS  OK"
endif
end subroutine
