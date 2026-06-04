module m1
  type t1
   contains
     procedure:: func1
     generic :: exists => func1
     procedure :: open_file
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
     module function func1(me) result(file_exists)
       class(t1), intent(in)::me
       logical :: file_exists
    file_exists = .false.
  end 
  module procedure open_file
    implicit none
    if (.not. me%exists()) then
    endif
    if (.not. me%func1 ()) then
    endif
  end procedure
end submodule m1sub
print *,'sngg966m : pass'
end
