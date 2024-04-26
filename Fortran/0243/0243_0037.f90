PROGRAM MAIN
REAL,parameter::d=DIM(456_8,556.4_4)
call check(d, DIM(456_8,556.4_4))
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
