 PROGRAM MAIN
real*8,parameter::d=dmax1(32212546_8,2221123.42345_4,3451456.51234_8,2221123.44567_8,98992.51234_4)
call check(d,dmax1(32212546_8,2221123.42345_4,3451456.51234_8,2221123.44567_8,98992.51234_4))
END
 
subroutine check(x,y)
real*8 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in max value ???'
else
print*," Max CALCULATION IS  OK"
endif
end subroutine
