module m1
  type z_type
     integer,pointer::z
  end type z_type
  type(z_type) ::g
end
module mo
use m1
contains
    subroutine ss
      g%z=1
    end subroutine ss
end

use mo
use m1
allocate(g%z)
call ss
print *,'pass'
end
