PROGRAM MAIN
REAL*8,parameter::d=DDIM(X=1024.1_8, Y=299.4_8)
call check(d, DDIM(X=1024.1_8, Y=299.4_8))
END

subroutine check(x,y)
REAL*8  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R8->R8) ???'
else
print*,"DDIM R8->R8 OK"
endif
end subroutine
