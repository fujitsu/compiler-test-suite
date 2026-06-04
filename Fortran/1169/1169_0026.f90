module m1
  type t1
   contains
     procedure:: func1
     generic :: exists => func1
     procedure :: open_file
  end type t1
  
  interface
     module subroutine open_file(me)
       class(t1), intent(inout)::me
     end subroutine
  end interface
contains
     function func1(me) result(file_exists)
       class(t1), intent(in)::me
       logical :: file_exists
    file_exists = .false.
  end 
end module m1

submodule (m1) m1sub
contains
  module procedure open_file
    implicit none
    if (.not. me%exists()) then
    endif
    if (.not. me%func1 ()) then
    endif
  end procedure
end submodule m1sub
print *,'sngg967m : pass'
end
