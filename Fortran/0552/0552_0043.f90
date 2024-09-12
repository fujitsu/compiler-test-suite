PROGRAM MAIN
INTEGER,parameter::d=SIGN(1024,2048)
call check(d, SIGN(1024,2048))
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
