module m
  interface
     module subroutine sub
     end subroutine sub
  end interface
end module m


submodule(m)smod
  type ty
   contains
     final :: fin
  end type ty
contains
  module subroutine sub
    type(ty)::a
  end subroutine
  subroutine fin(this)
    type(ty),intent(in) :: this
    print *,'sngg221h : pass'
  end subroutine fin
end submodule

use m
call sub
end
