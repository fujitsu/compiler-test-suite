PROGRAM MAIN
REAL*8,parameter::d=DSIGN(-33.8_8,-23.4_8)
call check(d, DSIGN(-33.8_8,-23.4_8))
END

subroutine check(x,y)
REAL*8  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R8->R8) ???'
else
print*,"DSIGN R8->R8 OK"
endif
end subroutine
