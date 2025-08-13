PROGRAM MAIN
REAL*8,PARAMETER::a=1056769.34_8
INTEGER*2::b=INT2(a)

call check(b,INT2(a))

END

subroutine check(x,y)
integer*2 x,y
print*,x,"--",y
if (x.ne.y) then
print *,'??? (Error: R8->i2) ???'
else
print*, "INT2 R8->i2 OK"	
endif
end subroutine
