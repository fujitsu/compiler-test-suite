PROGRAM MAIN
integer*2,PARAMETER::b=322_2
integer*2,parameter::c=222_2
complex*32,parameter::d=cmplx(b,c,KIND=16)
call check(d,cmplx(b,c,KIND=16))
END
 
subroutine check(x,y)
complex*32 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: i2->C32) ???'
else
print*," i2->C32 OK"
endif
end subroutine
