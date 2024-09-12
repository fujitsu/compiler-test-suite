PROGRAM MAIN
REAL::d=IMAG((334.1_4, 127_8))
call check(d, IMAG((334.1_4, 127_8)))
END

subroutine check(x,y)
REAL  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error) ???'
else
print*,"IMAGOK"
endif
end subroutine
