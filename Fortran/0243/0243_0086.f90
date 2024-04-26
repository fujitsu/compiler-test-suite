PROGRAM MAIN
INTEGER*8,parameter::d=MOD(2048_8,4096_8)
call check(d, MOD(2048_8,4096_8))
END

subroutine check(x,y)
INTEGER*8  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: i8->i8) ???'
else
print*,"MOD i8->i8 OK"
endif
end subroutine
