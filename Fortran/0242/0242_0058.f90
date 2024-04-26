 PROGRAM MAIN
real*8,parameter::d=dmin1(32212546.4123_8,2221123.42345_8,&
   3451456.51234_8,2221123.44567_8,9899234.51234_8)
call check(d,dmin1(32212546.4123_8,2221123.42345_8,&
    3451456.51234_8,2221123.44567_8,9899234.51234_8))
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
