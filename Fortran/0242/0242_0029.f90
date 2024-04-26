PROGRAM MAIN
complex*8,parameter::d=cmplx(o'123',123456_4)
call check(d,cmplx(o'123',123456_4))
END
 
subroutine check(x,y)
complex*8 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: boz->C) ???'
else
print*," boz->C OK"
endif
end subroutine
