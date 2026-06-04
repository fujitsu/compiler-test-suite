PROGRAM MAIN
INTEGER*2,PARAMETER::a=513_2
INTEGER*2::b=INT2(a)

call check(b,INT2(a))

END
subroutine check(x,y)
integer*2 x,y

print*,x,"--",y
if (x.ne.y) then
print *,'??? (Error: i2->i2) ???'
else
print*, "i2->i2 OK"	
endif
end subroutine
