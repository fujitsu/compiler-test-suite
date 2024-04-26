PROGRAM MAIN
INTEGER*1,parameter::d=MOD(25_1,66_1)
call check(d, MOD(25_1,66_1))
END

subroutine check(x,y)
INTEGER*1  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: i1->i1) ???'
else
print*,"MOD i1->i1 OK"
endif
end subroutine
