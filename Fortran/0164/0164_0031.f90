module m
integer::aaa=2
private
end module
use m
integer:: aaa=3
if (aaa/=3) print *,101
print *,'pass'
end
