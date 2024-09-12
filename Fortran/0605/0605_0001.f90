PROGRAM MAIN
REAL*8::d=IMAG((32.1_8, 12.5_8))
call check(d, IMAG((32.1_8, 12.5_8)))
END

subroutine check(x,y)
REAL*8  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error) ???'
else
print*,"IMAGOK"
endif
end subroutine
