PROGRAM MAIN
INTEGER*2,parameter::d=MOD(125_2,166_2)
call check(d, MOD(125_2,166_2))
END

subroutine check(x,y)
INTEGER*2  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: i2->i2) ???'
else
print*,"MOD i2->i2 OK"
endif
end subroutine
