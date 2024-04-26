PROGRAM MAIN
INTEGER*8,parameter::d=DIM(323545343_8,223243453_8)
call check(d, DIM(323545343_8,223243453_8))
END

subroutine check(x,y)
INTEGER*8  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: i8->i8) ???'
else
print*,"DIM i8->i8 OK"
endif
end subroutine
