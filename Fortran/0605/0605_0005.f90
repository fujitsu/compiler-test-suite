PROGRAM MAIN
REAL*16::d=IMAG((32.1_16, 12.5_16))
call check(d, IMAG((32.1_16, 12.5_16)))
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
