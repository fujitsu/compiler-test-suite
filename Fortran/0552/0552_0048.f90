PROGRAM MAIN
REAL::e
REAL::d=TAN(X=11.2_4)

e=TAN(X=11.2_4)

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
