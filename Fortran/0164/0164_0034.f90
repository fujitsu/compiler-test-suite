module m
integer,pointer::aaa
private
end module
module mm
use m
integer:: aaa=1
end
use mm
if (aaa/=1) print *,202
print *,'pass'
end
