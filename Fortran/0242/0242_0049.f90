PROGRAM MAIN
complex*16,parameter::d=dcmplx(322.4_4,222.4_4)
call check(d,dcmplx(322.4_4,222.4_4))
END
 
subroutine check(x,y)
complex*16 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R->C16) ???'
else
print*,"dcmplex R->C16 OK"
endif
end subroutine
