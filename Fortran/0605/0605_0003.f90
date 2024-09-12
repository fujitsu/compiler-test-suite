PROGRAM MAIN
REAL*16::d=IMAG((333.1_16, 222.5_16))
call check(d, IMAG((333.1_16, 222.5_16)))
END

subroutine check(x,y)
REAL*16  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error) ???'
else
print*,"IMAGOK"
endif
end subroutine
