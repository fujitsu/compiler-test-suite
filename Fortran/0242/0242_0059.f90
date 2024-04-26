 PROGRAM MAIN
real*8,parameter::d=dmin1(32212546_8,2221123.42345_4,3451456.51234_8,2221123.44567_8,98992.51234_4)
call check(d,dmin1(32212546_8,2221123.42345_4,3451456.51234_8,2221123.44567_8,98992.51234_4))
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
