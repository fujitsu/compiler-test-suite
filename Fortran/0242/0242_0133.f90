program main
integer*8,parameter::a=121234_8
real,parameter::e=2312.23_4

REAL,parameter::d=min(a,e)
call check(d,min(a,e))
END
 
subroutine check(x,y)
REAL x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in min value ???'
else
print*," min CALCULATION IS  OK"
endif
end subroutine
