PROGRAM MAIN
REAL*8,PARAMETER::a=7790.45_8
INTEGER*4::b=IDINT(a)

call check(b,IDINT(a))

END

subroutine check(x,y)
integer*4 x,y
print*,x ,"--", y
if (x.ne.y) then
print *,'??? (Error: R8->i4) ???'
else
print*, "R8->i4 OK"
endif
end subroutine
