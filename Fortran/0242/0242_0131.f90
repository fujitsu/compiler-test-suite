PROGRAM MAIN
integer*4,parameter::d=min(3212345_4,22256789_4,3434567_4,22256789_4,9812345_4)
call check(d,min(3212345_4,22256789_4,3434567_4,22256789_4,9812345_4))
END
 
subroutine check(x,y)
integer*4 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in min value ???'
else
print*," min CALCULATION IS  OK"
endif
end subroutine
