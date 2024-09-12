module m1
abstract interface 
   subroutine sub
   end
end interface
type,abstract::t1
  integer::x1
end type
private::sub,t1
end
module m2
use m1
abstract interface 
   subroutine sub
   end
end interface
type,abstract::t1
  integer::x1
end type
end
use m2
print *,'pass'
end



