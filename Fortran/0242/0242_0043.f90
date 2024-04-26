PROGRAM MAIN
integer*8,PARAMETER::b=3298765_8
integer*8,parameter::c=2298765_8
complex*32,parameter::d=cmplx(b,c,KIND=16)
call check(d,cmplx(b,c,KIND=16))
END
 
subroutine check(x,y)
complex*32 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: i8->C32) ???'
else
print*," i8->C32 OK"
endif
end subroutine
