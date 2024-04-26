PROGRAM MAIN
REAL*16,parameter::d=MOD(35.4_16,25.4_16)
call check(d, MOD(35.4_16,25.4_16))
END

subroutine check(x,y)
REAL*16  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R16->R16) ???'
else
print*,"MOD R16->R16 OK"
endif
end subroutine
