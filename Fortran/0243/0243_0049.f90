PROGRAM MAIN
REAL*8::d=DIMAG((123.1_4, 1110.1_8))
call check(d, DIMAG((123.1_4, 1110.1_8)))
END

subroutine check(x,y)
REAL*8  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: C16->R8) ???'
else
print*,"DIMAG C16->R8 OK"
endif
end subroutine
