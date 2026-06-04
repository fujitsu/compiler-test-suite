PROGRAM MAIN
INTEGER*2::b=INT2(1056784.2_8)

call check(b,INT2(1056784.2_8))

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
