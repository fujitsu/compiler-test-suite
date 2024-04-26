PROGRAM MAIN
complex*16,parameter::d=cmplx(3212345.4_4,2212345.4_4,8)
call check(d,cmplx(3212345.4_4,2212345.4_4,8))
END
 
subroutine check(x,y)
complex*16 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R->C16) ???'
else
print*," R->C16 OK"
endif
end subroutine
