PROGRAM MAIN
REAL::d=AIMAG(Z=(3.1_4, 127.5_4))
call check(d, AIMAG(Z=(3.1_4, 127.5_4)))
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
