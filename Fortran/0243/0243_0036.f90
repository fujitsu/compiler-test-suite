PROGRAM MAIN
REAL,parameter::d=DIM(X=32.4_4,Y=22.4_4)
call check(d, DIM(X=32.4_4,Y=22.4_4))
END

subroutine check(x,y)
REAL  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R->R) ???'
else
print*,"DIM R->R OK"
endif
end subroutine
