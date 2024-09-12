external func
real func
procedure(real),pointer::x
x=> func
call sub(x)
print *,'pass'
contains
subroutine sub(xx)
procedure(real),pointer::xx 
r=xx()
if (abs(r-1)>0.0001)print *,'error',r
r=func()
if (abs(r-1)>0.0001)print *,'error-2',r
end subroutine
end
function func()
func=1.0
end
