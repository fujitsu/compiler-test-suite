complex :: c=(2.0 , 3.0)
real :: r
r= c%re

if (r/=2) print *,101
print *,'pass'
end
