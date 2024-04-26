PROGRAM MAIN
complex*8,parameter::d=cmplx(KIND=4,Y=123_4,X=456_4)
call check(d,cmplx(KIND=4,Y=123_4,X=456_4))
END
 
subroutine check(x,y)
complex*8 x,y 
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: i4->C) ???'
else
print*," i4->C OK"
endif
end subroutine 
