PROGRAM MAIN
integer*2,parameter::d=max(-3278_2,-2123_2,-3445_2,-2221_2,0_2)
call check(d,max(-3278_2,-2123_2,-3445_2,-2221_2,0_2))
END
 
subroutine check(x,y)
integer*2 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in max value ???'
else
print*," Max CALCULATION IS  OK"
endif
end subroutine
