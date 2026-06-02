module m
  type ty
    integer::x
   contains
     final :: fin
  end type ty
  interface
     module subroutine sub
     end
    module subroutine fin(this)
    type(ty),intent(in) :: this
     end
  end interface
end module m


submodule(m)smod
contains
  module procedure  sub
    type(ty)::a
     a%x=1
     call fin(a)
  end
  module procedure fin
    write(19,*) this%x
  end
end submodule

use m
call sub
rewind 19
read(19,*) n
if (n/=1) print *,2002
read(19,*) n
if (n/=1) print *,2002
read(19,*,end=1) n

 print *,8001
1  print *,'sngg206j : pass'
end
