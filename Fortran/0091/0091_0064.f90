PROGRAM MAIN
REAL*16::a = NEAREST(15.3_16, 4.0_16)
integer ::k =  kind(NEAREST(15.3_16, 4.0_16))
REAL*16::b = 15.3_16
REAL*16::c = 4.0_16
call check(a, NEAREST(b,c))
call check1(k, kind(NEAREST(b,c)))
END

subroutine check(x, y)
REAL*16 x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R16->R16) ???'
else
print*," R16->R16 OK"
endif
end subroutine

subroutine check1(x, y)
integer x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (KIND Error) ???'
else
print*," KIND OK"
endif
end subroutine



