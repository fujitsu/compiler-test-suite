module m01
type x
   integer::x1(2)
end  type
 type (x)::v
end
module m02
use m01
end
print *,'sngg367m : pass'
end
