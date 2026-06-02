module m1
  interface
   module function c() result(r)
   real   (16)     ::r
   end function
   module subroutine s
   end
  end interface
end
submodule (m1) zz
type x
procedure(c),pointer,nopass:: p
end type
type(x)::v
contains
module procedure c
r=1
end 
subroutine su  
  implicit none
  v%p=>c
  if (v%p()/=1) print *,1001
  end 
module subroutine s  
call su
end
end submodule 

use m1
call s
print *,'sngg454o : pass'
end
