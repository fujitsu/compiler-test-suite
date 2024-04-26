PROGRAM MAIN
REAL,parameter::d=MOD(A=32.4_4,P=22.4_4)
call check(d, MOD(A=32.4_4,P=22.4_4))
END

subroutine check(x,y)
REAL  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R->R) ???'
else
print*,"MOD R->R OK"
endif
end subroutine
