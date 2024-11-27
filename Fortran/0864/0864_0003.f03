module mmmm1
  type x
    procedure(),pointer,nopass::p1
  end type
  contains
   subroutine ss1
   end subroutine
end
subroutine s1
use mmmm1
type (x)::v1
 v1= x(ss1)
end
call s1
print *,'pass'
end
