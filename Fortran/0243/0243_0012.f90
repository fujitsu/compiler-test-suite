PROGRAM MAIN
REAL*8::d=AIMAG((32.1_8, 12.5_8))
call check(d, AIMAG((32.1_8, 12.5_8)))
END

subroutine check(x,y)
REAL*8  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: C16->R8) ???'
else
print*,"AIMAG C16->R8 OK"
endif
end subroutine
