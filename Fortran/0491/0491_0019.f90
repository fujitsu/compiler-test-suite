module m3
  implicit none
  interface gen
    module subroutine sub(k)
    implicit none
    integer::k
    end
  end interface
end

submodule(m3)smod
contains
  module procedure sub
   k=1
  end procedure
end

use m3
call gen(k)
if (k/=1) print *,201
print *,'pass'
end
