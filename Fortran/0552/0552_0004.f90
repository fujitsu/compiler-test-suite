PROGRAM MAIN
REAL::e
REAL::d=ASIN(X=1.0_4)

e=ASIN(X=1.0_4)

call check(d,e)
END

subroutine check(x,y)
REAL  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R->R) ???'
else
print*," R->R OK"
endif
end subroutine
