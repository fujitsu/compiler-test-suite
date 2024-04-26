PROGRAM MAIN
complex*16,parameter::d=cmplx(3226789.4_16,2226987.4_16,KIND=8)
call check(d,cmplx(3226789.4_16,2226987.4_16,KIND=8))
END
 
subroutine check(x,y)
complex*16 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R16->C16) ???'
else
print*," R16->C16 OK"
endif
end subroutine
