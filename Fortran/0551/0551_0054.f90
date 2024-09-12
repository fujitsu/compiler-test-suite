PROGRAM MAIN
REAL::e
REAL::d=SIN(X=10.2_4)

e=SIN(X=10.2_4)

call check(d,e)
END

subroutine check(x,y)
REAL  x,y
if (abs(x-y)>0.000001) then
print *,'??? (Error: R->R) ???'
else
print*," R->R OK"
endif
end subroutine
