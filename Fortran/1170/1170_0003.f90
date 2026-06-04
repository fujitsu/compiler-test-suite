module m
  type ty
    integer::x
   contains
     final :: fin
  end type ty
  interface
     module subroutine sub(a)
     class(ty),allocatable::a
     end 
    module subroutine fin(this)
    type(ty),intent(in) :: this
     end 
  end interface
contains
  module procedure fin
    write(2,*) this%x
  end 
end module m


submodule(m)smod
contains
  module procedure  sub
     a%x=1
     call fin(a)
     deallocate(a)
  end 
end submodule

subroutine s
use m
    class(ty),allocatable::a
allocate(a)
call sub(a)
if (allocated(a)) print *,3001
allocate(a)
a%x=1
end
call s
rewind 2
read(2,*) n
if (n/=1) print *,2002
read(2,*) n
if (n/=1) print *,20021
read(2,*) n
if (n/=1) print *,20022
read(2,*,end=1) n

 print *,8001

1print *,'sngg341o : pass'
end
