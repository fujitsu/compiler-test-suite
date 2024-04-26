PROGRAM MAIN
complex*32,parameter::d=cmplx(32221234.4_4,22221234.4_4,KIND=16)
call check(d,cmplx(32221234.4_4,22221234.4_4,KIND=16))
END
 
subroutine check(x,y)
complex*32 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R->C32) ???'
else
print*," R->C32 OK" 
endif
end subroutine
