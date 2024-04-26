PROGRAM MAIN
REAL*16,parameter::d=MOD(34455667.4_4,real(23456.4_4,16))
call check(d, MOD(34455667.4_4,real(23456.4_4,16)))
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
