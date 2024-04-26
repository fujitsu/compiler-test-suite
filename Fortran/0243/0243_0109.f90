PROGRAM MAIN
REAL,parameter::d=SIGN(A=-32.4_4,B=22.4_4)
call check(d, SIGN(A=-32.4_4,B=22.4_4))
END

subroutine check(x,y)
REAL  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R->R) ???'
else
print*,"SIGN R->R OK"
endif
end subroutine
