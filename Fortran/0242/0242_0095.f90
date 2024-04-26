program main
integer*8,parameter::a=121234_8
real,parameter::e=2312.23_4

REAL,parameter::d=max(a,e)
call check(d,max(a,e))
END
 
subroutine check(x,y)
REAL x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in max value ???'
else
print*," max CALCULATION IS  OK"
endif
end subroutine
