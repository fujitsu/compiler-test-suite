PROGRAM MAIN
complex*8,parameter::d=cmplx(35678_8,40999_8,KIND=4)
call check(d,cmplx(35678_8,40999_8,KIND=4))
END
 
subroutine check(x,y)
complex*8 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: i8->C) ???'
else
print*," i8->C OK"
endif
end subroutine
            
