 PROGRAM MAIN
real*16,parameter::d=min(32212546.4123456_16,2221123.42345_16,3451456.51234_16,2221123.4456789_16,989.4_4)
call check(d,min(32212546.4123456_16,2221123.42345_16,3451456.51234_16,2221123.4456789_16,989.4_4))
END
 
subroutine check(x,y)
real*16 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in min value ???'
else
print*," min CALCULATION IS  OK"
endif
end subroutine
