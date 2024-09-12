 PROGRAM MAIN
real*4,parameter::d=AMAX0(32_4,22212_4,&
      34511123_4,22213123_4,98992123_4)
call check(d,AMAX0(32_4,22212_4,&
       34511123_4,22213123_4,98992123_4))
END
 
subroutine check(x,y)
real*4 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error R->R ???'
else
print*," R->R OK"
endif
end subroutine
