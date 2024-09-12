module m1
   integer:: a
   integer::b
end
module m2
   integer:: a
   integer::b
end
use m1
use m2
print *,'pass'
end
