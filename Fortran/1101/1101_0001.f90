module m0
  type q
    integer::v
  end type
  type w
    integer::v
  end type
contains
  function qf(d) result(r)
   type(q)::r,d
   r=d
  end 
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
interface genopqw
  procedure::opqw
end interface
procedure(qf)::m
contains 
  module procedure opq
    implicit none
    r%v=d1%v
    if(d1%v/=d2%v) r%v=9999
  end
  module procedure opqw
    implicit none
    r=.false.
    if (d1%v/=2)r=.true.
  end
end
print *,'sngg473o : pass'
end
