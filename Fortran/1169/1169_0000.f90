module m1
  type t1
   contains
     procedure, private :: func1
     generic, public :: exists => func1
     procedure, public :: open_file
  end type t1

  interface
     module function func1(me) result(file_exists)
       class(t1), intent(in)::me
       logical :: file_exists
     end function
     module subroutine open_file(me)
       class(t1), intent(inout)::me
     end subroutine
  end interface
end module m1

submodule (m1) m1sub
contains
  module procedure func1
    file_exists = .false.
  end procedure
  module procedure open_file
    implicit none
    if (.not. me%exists()) then
    endif
  end procedure
end submodule m1sub

print *,'sngg012n : pass'
end
