module m
  interface
     module subroutine sub
     end subroutine sub
  end interface
end module m


submodule(m)smod
  type ty
    integer::x
   contains
     final :: fin
  end type ty
contains
  module subroutine sub
    type(ty)::a
     call fin(a)
  end subroutine
  subroutine fin(this)
    type(ty),intent(in) :: this
     integer,allocatable::x(:)
     allocate(x(2))
  end subroutine fin
end submodule

use m
call sub
    print *,'sngg091j : pass'
end
