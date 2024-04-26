module m1
procedure(logical),pointer::aaa
end module
module m2
use m1
private
integer,public:: bbb=1
end
module m3
use m2
integer,public:: aaa=2
end
use m3
if (bbb/=1) print *,201
if (aaa/=2) print *,202
print *,'pass'
end
