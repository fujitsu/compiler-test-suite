PROGRAM MAIN
complex*16,parameter::d=dcmplx(35_2)
call check(d,dcmplx(35_2))
END
 
subroutine check(x,y)
complex*16 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: i2->C16) ???'
else
print*,"dcmplx i2->C16 OK"
endif
end subroutine 
