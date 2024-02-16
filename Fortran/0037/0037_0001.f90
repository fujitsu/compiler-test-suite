module mod_1
 type drived_type
  integer:: com
 end type
end
module mod_2
use mod_1
 private
 public::proc
  interface
    subroutine proc(d_var)
      import :: drived_type
      type(drived_type) :: d_var
    end subroutine
  end interface
end module

use mod_2
print *,'pass'
end

