module m1
 contains
 subroutine prc
 end subroutine
end
module m2
use m1
  type x
   contains
    procedure,nopass::prc
  end type
end
subroutine s1
use m2
type(x)::v
call v%prc()
end
call s1
print *,'pass'
end
