  module m
    type t
      integer::a
      contains
      procedure,nopass::sub
    end type
  contains
    subroutine sub()
    end subroutine
  end module
module aaaa
use m
type(t)::obj
interface aaa
  subroutine sub2(aa,ii)
    type(*)::aa
  end subroutine
  subroutine sub1(aa,rr)
    use m
    type(t)::aa
  end subroutine
end interface
end

module  mod
contains
  subroutine sub1m(aa,rr)
    use m
    type(t)::aa
  end subroutine
end
module  mods
interface
  module subroutine sub1s(aa,rr)
    use m
    type(t)::aa
  end subroutine
end interface
end
submodule (mods) smma
contains
   module procedure sub1s
   end 
end

use mod
use mods
use m
use aaaa
call sub1(obj,1.0) 
call sub1i(obj,1.0) 
call sub1m(obj,1.0) 
call sub1s(obj,1.0) 
print *,'pass'
contains
  subroutine sub1i(aa,rr)
    use m
    type(t)::aa
  end subroutine
end
  subroutine sub2(aa,ii)
    type(*)::aa
print *,'NG'
  end subroutine
  subroutine sub1(aa,rr)
    use m
    type(t)::aa
  end subroutine
