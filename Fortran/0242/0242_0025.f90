PROGRAM MAIN
complex*8,parameter::d=cmplx(3221234567.4_8,2221234567.4_8)
call check(d,cmplx(3221234567.4_8,2221234567.4_8))
END
 
subroutine check(x,y)
complex*8 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R8->C) ???'
else
print*," R8->C OK"
endif
end subroutine
