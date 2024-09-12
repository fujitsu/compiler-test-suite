PROGRAM MAIN
INTEGER*4::b=IDINT(513.2_4)

call check(b,IDINT(513.2_4))

END

subroutine check(x,y)
integer*4 x,y
print*,x ,"--", y
if (x.ne.y) then
print *,'??? (Error: R4->i4) ???'
else
print*, "R4->i4 OK"	
endif
end subroutine
