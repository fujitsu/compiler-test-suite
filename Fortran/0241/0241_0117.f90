PROGRAM MAIN
INTEGER*2::b=INT2(131075_8)

call check(b,INT2(131075_8))

END
subroutine check(x,y)
integer*2 x,y
print*,x,"--",y
if (x.ne.y) then
print *,'??? (Error: i8->i2) ???'
else
print*, "i8->i2 OK"
endif
end subroutine
