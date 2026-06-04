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
procedure(c),pointer:: p
contains
module procedure c
r=1
end 
module subroutine s  
  implicit none
  p=>c
  if (p()/=1) print *,1001
  end 
end submodule 

use m1
call s
print *,'sngg457o : pass'
end
