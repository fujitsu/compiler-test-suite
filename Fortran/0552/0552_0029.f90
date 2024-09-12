PROGRAM MAIN
REAL*8::a = DASIN(0.2_8)
call check(a, DASIN(0.2_8))
END

subroutine check(x, y)
REAL*8 x, y
if (abs(x-y)>0.000001) then
print *,x, "--",y
print *,'??? (Error: R8->R8) ???'
else
print*," R8->R8 OK"
endif
end subroutine
