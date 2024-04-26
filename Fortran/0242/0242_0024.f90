PROGRAM MAIN
real*8,PARAMETER::b=321234546_8
real*8,parameter::c=221234567_8
complex*32,parameter::d=cmplx(b,c,KIND=16)
call check(d,cmplx(b,c,KIND=16))
END
 
subroutine check(x,y)
complex*32 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R8->C32) ???'
else
print*," R8->C32 OK"
endif
end subroutine
