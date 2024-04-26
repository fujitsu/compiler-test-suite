 PROGRAM MAIN
integer*4,parameter::d=min1(322112.41_4,222113.42_4,&
             345114.51_4,989916.51_4,222115_4)
call check(d,min1(322112.41_4,222113.42_4,&
       345114.51_4,989916.51_4,222115_4))
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
                
