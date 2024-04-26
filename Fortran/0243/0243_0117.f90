PROGRAM MAIN
INTEGER*8,parameter::d=SIGN(2048_8,4096_8)
call check(d, SIGN(2048_8,4096_8))
END

subroutine check(x,y)
INTEGER*8  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: i8->i8) ???'
else
print*,"SIGN i8->i8 OK"
endif
end subroutine
