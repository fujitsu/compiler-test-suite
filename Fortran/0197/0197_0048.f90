module m1
type x
  integer::x1
end type
interface
  subroutine s(z)
  import 
  type(x)::z
  end subroutine
end interface
end
use m1
print *,'pass'
end
