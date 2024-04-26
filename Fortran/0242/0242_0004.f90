PROGRAM MAIN
REAL,parameter::d=AMOD(A=32.4_4,P=22.4_4)
call check(d, AMOD(A=32.4_4,P=22.4_4))
END

subroutine check(x,y)
REAL  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R->R) ???'
else
print*,"AMOD R->R OK"
endif
end subroutine
