PROGRAM MAIN
REAL,parameter::d=MOD(456_8,556.4_4)
call check(d, MOD(456_8,556.4_4))
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
