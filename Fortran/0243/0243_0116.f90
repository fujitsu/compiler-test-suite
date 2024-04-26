PROGRAM MAIN
INTEGER,parameter::d=SIGN(1024_4,2048_4)
call check(d, SIGN(1024_4,2048_4))
END

subroutine check(x,y)
INTEGER  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: i4->i4) ???'
else
print*,"SIGN i4->i4 OK"
endif
end subroutine
