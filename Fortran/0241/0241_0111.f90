PROGRAM MAIN
REAL*16,PARAMETER::a=67175171.23_16 
INTEGER*2::b=INT2(a)

call check(b,INT2(a))

END

subroutine check(x,y)
integer*2 x,y
print*,x ,"--", y
if (x.ne.y) then
print *,'??? (Error: R16->i2) ???'
else
print*, "INT2 R16->i2 OK"
endif
end subroutine
