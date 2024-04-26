module m1
 integer::a
end
module m2
 use m1
 asynchronous:: a
end
use m1
use m2
a=1
if (a/=1) print *,101
print *,'pass'
end
