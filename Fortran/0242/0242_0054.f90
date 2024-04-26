PROGRAM MAIN
complex*16,parameter::d=dcmplx(3522_4,4034_4)
call check(d,dcmplx(3522_4,4034_4))
END
 
subroutine check(x,y)
complex*16 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: i4->C16) ???'
else
print*,"dcmplx i4->C16 OK"
endif
end subroutine

