module mod                       ! 1), 10)
  type ty                        ! 2), 8)
     integer::x
   contains
     procedure:: proc
     generic :: gen => proc      ! 3), 4), 13)
  end type ty
  
  interface
     module subroutine sub(var)  ! 5), 6), 7), 12)
       class(ty)::var            ! 7), 8)
     end subroutine
  end interface
contains
  subroutine proc(var) 
    class(ty)::var
  end subroutine
end 

submodule (mod) submod           ! 9), 10)
contains
  module procedure sub           ! 11), 12)
    implicit none
    call  var%proc()             ! 13)
  end procedure
end 

use mod
 class(ty),allocatable::var
allocate(var)
var%x=1
call sub(var)
print *,'sngg144n : pass'
end
