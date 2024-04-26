PROGRAM MAIN
complex*16,parameter::d=dcmplx(3225.43433_8,2225.42422_8)
call check(d,dcmplx(3225.43433_8,2225.42422_8))
END

subroutine check(x,y)
complex*16 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R8->C16) ???'
else
print*,"dcmplx R8->C16 OK"
endif
end subroutine
