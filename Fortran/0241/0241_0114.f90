PROGRAM MAIN
INTEGER*1,PARAMETER::a=127_1
INTEGER*2::b=INT2(a)

call check(b,INT2(a))

END
subroutine check(x,y)
integer*2 x,y
print*,x,"--",y
if (x.ne.y) then
print *,'??? (Error: i1->i2) ???'
else
print*, "i1->i2 OK"
endif
end subroutine
