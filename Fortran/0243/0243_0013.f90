PROGRAM MAIN
REAL::d=AIMAG((334.1_4, 127_8))
call check(d, AIMAG((334.1_4, 127_8)))
END

subroutine check(x,y)
REAL  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: C->R) ???'
else
print*,"AIMAG C->R OK"
endif
end subroutine
