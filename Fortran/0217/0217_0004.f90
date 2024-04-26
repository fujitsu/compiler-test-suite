module k1
  implicit none
  integer :: n=1
end
module k22
  implicit none
  integer :: n=2
end
module k333
  implicit none
  integer :: n=3
end

module m
  implicit none
  integer :: n=4
  interface
    module function sub1(a) result(r)
      use k1
      implicit none
      integer :: a(n)
      real::r
    end function
    module subroutine sub4(a)
      implicit none
      integer :: a(n)
    end subroutine
    module function sub3(a) result(r)
      use k333
      implicit none
      integer :: a(n)
      real::r
    end function
    module function sub2(a) result(r)
      use k22
      implicit none
      integer :: a(n)
      real::r
    end function
  end interface
end

submodule(m)smod1
contains
  module procedure sub1
    if (size(a) /= 1) print *,1,size(a)
    r=size(a)+n
  end procedure
end
submodule(m)smod2
contains
  module procedure sub2
    if (size(a) /= 2) print *,2,size(a)
    r=size(a)+n
  end procedure
end
submodule(m)smod3
contains
  module procedure sub3
    if (size(a) /= 3) print *,3,size(a)
    r=size(a)+n
  end procedure
end
submodule(m)smod4
contains
  module procedure sub4
    if (size(a) /= 4) print *,4,size(a)
  end procedure
end

use m
integer::a(8)
call=sub1(a)
if (call/=1*2) print *,201
call=sub2(a)
if (call/=2*2) print *,202
call=sub3(a)
if (call/=3*2) print *,203
call sub4(a)
print *,'pass'
end

