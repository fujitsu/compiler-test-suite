 PROGRAM MAIN
real*8,parameter::d=min(32212.4123_8,1221123.42345_8,34556.51234_8,2221123.44567_8,98.51_4)
call check(d,min(32212.4123_8,1221123.42345_8,34556.51234_8,2221123.44567_8,98.51_4))
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
