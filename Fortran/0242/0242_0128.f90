PROGRAM MAIN
integer*2,parameter::d=min(-3278_2,-2123_2,-3445_2,-2221_2,0_2)
call check(d,min(-3278_2,-2123_2,-3445_2,-2221_2,0_2))
END
 
subroutine check(x,y)
integer*2 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in min value ???'
else
print*," min CALCULATION IS  OK"
endif
end subroutine
