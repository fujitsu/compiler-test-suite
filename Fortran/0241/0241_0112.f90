PROGRAM MAIN
INTEGER*2::b=INT2((513.2_4,321.35_4))

call check(b,INT2(( 513.2_4 ,321.35_4)))

END

subroutine check(x,y)
integer*2 x,y


print*,x,"--",y
if (x.ne.y) then
print *,'??? (Error: C->i2) ???'
else
print*, "C->i2 OK"	
endif
end subroutine
