PROGRAM MAIN
complex*16,parameter::d=dcmplx(35_1,25.4)
call check(d,dcmplx(35_1,25.4))
END
 
subroutine check(x,y)
complex*16 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: i1->C16) ???'
else
print*,"dcmplx i1->C16 OK"
endif
end subroutine
