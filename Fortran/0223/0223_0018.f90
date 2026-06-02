module minimal_example
  implicit none
  integer :: i
  type :: foo
     procedure(foo_t), pointer :: fail
     integer::z=2
  end type foo

  abstract interface
     subroutine foo_t(this)
       import :: foo
       class(foo) ::this
     end subroutine foo_t
  end interface
end module minimal_example

module intermediate
  use minimal_example, only: i
end module intermediate

module test_min
  use intermediate
  use minimal_example, only: i
end module test_min

module y
   use minimal_example
  interface
     subroutine foo_y(this)
       import :: foo
       class(foo) ::this
     end 
  end interface
end

use test_min
use minimal_example
use y
type(foo):: var
var%fail=>foo_y
call var%fail()
       if (var%z/=3) print *,2102
print *,'pass'
end

     subroutine foo_y(this)
       use y
       class(foo) ::this
       if (this%z/=2) print *,2002
       this%z=3
     end 
