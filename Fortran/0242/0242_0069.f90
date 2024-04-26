 PROGRAM MAIN
real*16,parameter::d=max(32212546.4123456_16,2221123.42345_16,3451456.51234_16,98_1,2221123.4456789_16)
call check(d,max(32212546.4123456_16,2221123.42345_16,3451456.51234_16,98_1,2221123.4456789_16))
END
 
subroutine check(x,y)
real*16 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in max value ???'
else
print*," Max CALCULATION IS  OK"
endif
end subroutine
 
