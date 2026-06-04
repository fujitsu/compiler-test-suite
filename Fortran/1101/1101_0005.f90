module m1
implicit none
type z
  integer::u
end type
interface 
     module type(z) function c(k)
     end
     module subroutine s
     end
end interface
interface gen
procedure::c
end interface
end 
submodule (m1) submod2
contains
  subroutine sub2()
  implicit none
  type(z)     ::cc
  cc=gen(1)
  if (cc%u/=1) print *,9001
  end 
module procedure c
c%u=k
if (k/=1) print *,8001
end 
module procedure s
call sub2
end
end submodule 

use m1
call s
print *,'sngg479o : pass'
end
