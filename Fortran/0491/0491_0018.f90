module m
 interface
   module subroutine s
    implicit none
   end
 end interface
end

submodule (m) ss
contains
  module procedure s
    i=1
    if (i/=1) print *,201
  end
end

use m
call s
print *,'pass'
end
