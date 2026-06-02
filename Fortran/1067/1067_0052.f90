module m1
  interface
module function c() result(r)
character(:),allocatable::r
end function
module subroutine s
end
  end interface
end
submodule (m1) zz
contains
module   subroutine s  
  implicit none
  if(c()/='a')print *,1010
  end 
module procedure c
allocate(character::r)
r='a'
end 
end submodule 

use m1
call s
print *,'sngg451o : pass'
end
