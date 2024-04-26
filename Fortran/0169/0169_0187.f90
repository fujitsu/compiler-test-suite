module m
  type ty
  contains
    procedure,nopass :: prc
  end type
  interface
    module subroutine prc
    end subroutine
  end interface
end

submodule(m)submod
contains
  module subroutine prc
    print *,'pass'
  end subroutine
end 

use m
type(ty) :: i
call i%prc
end
