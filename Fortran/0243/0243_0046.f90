PROGRAM MAIN
integer,parameter::d=DIM(32_4,22_4)
call check(d, DIM(32_4,22_4))
END

subroutine check(x,y)
integer  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: i4->i4) ???'
else
print*,"DIM i4->i4 OK"
endif
end subroutine
