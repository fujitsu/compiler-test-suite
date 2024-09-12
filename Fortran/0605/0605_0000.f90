PROGRAM MAIN
REAL::d=IMAG((3.1_4, 127.5_4))
call check(d, IMAG((3.1_4, 127.5_4)))
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
