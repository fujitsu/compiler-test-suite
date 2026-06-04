PROGRAM MAIN
COMPLEX*16,PARAMETER::x=(766.34_8,45356566.34_8)
INTEGER*2::b=INT2(x)

call check(b,INT2(x))

END

subroutine check(x,y)
integer*2 x,y
print*,x,"--",y
if (x.ne.y) then
print *,'??? (Error: DC->i2) ???'
else
print*, "DC->i2 OK"
endif
end subroutine
