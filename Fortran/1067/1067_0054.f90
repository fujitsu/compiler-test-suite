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
subroutine su  
  implicit none
  p=>c
  if (p()/=1) print *,1001
  end 
module subroutine s  
call su
end
end submodule 

use m1
call s
print *,'sngg453o : pass'
end
