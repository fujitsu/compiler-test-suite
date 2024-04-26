PROGRAM MAIN
REAL*16::d=AIMAG((333.1_16, 222.5_16))
call check(d, AIMAG((333.1_16, 222.5_16)))
END

subroutine check(x,y)
REAL*16  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: C32->R16) ???'
else
print*,"AIMAG C32->R16 OK"
endif
end subroutine
