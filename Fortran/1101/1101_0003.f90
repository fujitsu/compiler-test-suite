module m0
  type q
    integer::v
  end type
  type w
    integer::v
  end type
end
module m1
use m0
    implicit none
  interface operator(/=)
    procedure opq
  end interface
    interface 
  module function opq(d1,d2) result(r)
    type(q),intent(in)::d1,d2
    type(w)::r
  end
  module function opqw(d1) result(r)
    type(w),intent(in)::d1
    logical::r
  end
    end interface 
end 

submodule (m1) smod
interface genopq
  procedure::opq
end interface
contains 
  module procedure opq
    implicit none
    r%v=d1%v
  end
  module procedure opqw
    implicit none
    r=.false.
  end
end
print *,'sngg475o : pass'
end
