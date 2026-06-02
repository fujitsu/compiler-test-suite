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
contains
  module procedure fin
    write(1,*) this%x
  end 
end module m


submodule(m)smod
contains
  module procedure  sub
    type(ty)::a
     a%x=1
     call fin(a)
  end 
end submodule

use m
call sub
rewind 1
read(1,*) n
if (n/=1) print *,2002
read(1,*) n
if (n/=1) print *,2002
read(1,*,end=1) n

 print *,8001
1  print *,'sngg340o : pass'
end
