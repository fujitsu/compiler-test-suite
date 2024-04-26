PROGRAM MAIN
complex*32,parameter::d=cmplx(3578_4,4000_4,16)
call check(d,cmplx(3578_4,4000_4,16))
END
 
subroutine check(x,y)
complex*32 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: i4->C32) ???'
else
print*," i4->C32 OK"
endif
end subroutine
              
