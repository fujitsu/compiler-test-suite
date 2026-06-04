module n
procedure(foo2),pointer::foo3
  interface gen
    procedure foo3
  end interface
contains
subroutine foo2(n)
integer::n
if (n/=2) print *,902
end subroutine
end
module m1
use n
implicit none
  interface
     module subroutine sub1()
     end subroutine
  end interface
end module m1
submodule (m1) m1sub
contains
  module procedure  sub1  
implicit none
  end 
end 
use m1

print *,'sngg469o : pass'
end
