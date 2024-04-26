PROGRAM MAIN
complex*8,parameter::d=cmplx(3234567.4_4,2234567.4_4,KIND=4)
call check(d,cmplx(3234567.4_4,2234567.4_4,KIND=4))
END
 
subroutine check(x,y)
complex*8 x,y
print *,x, "--",y 
if (x.ne.y) then
print *,'??? (Error: R->C8) ???'
else 
print*," R->C8 OK"
endif
end subroutine
