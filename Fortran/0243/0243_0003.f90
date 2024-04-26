PROGRAM MAIN
REAL::e
REAL::d=ABS(A=-1000.2_4)

e=ABS(A=-1000.2_4)

call check(d,e)
END

subroutine check(x,y)
REAL  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R->R) ???'
else
print*,"ABS R->R OK"
endif
end subroutine
