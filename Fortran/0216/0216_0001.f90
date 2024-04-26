module k1
  implicit none
  integer :: n=1
end
module k2
  implicit none
  integer :: n=2
end
module k3
  implicit none
  integer :: n=3
end

module k4
  implicit none
  integer :: n=4
  interface
    module function sub1(a) result(r)
      use k1
      implicit none
      integer :: a(n)
      real::r
    end function
    module function sub4(a) result(r)
      implicit none
      integer :: a(n)
      real::r
    end function
    module function sub3(a) result(r)
      use k3
      implicit none
      integer :: a(n)
      real::r
    end function
    module function sub2(a) result(r)
      use k2
      implicit none
      integer :: a(n)
      real::r
    end function
  end interface
end

submodule(k4)smod1
contains
  module procedure sub1
      use k1
    if (size(a) /= 1) print *,1,size(a)
    r=size(a)+n
  end procedure
end
submodule(k4)smod2
contains
  module procedure sub2
      use k2
    if (size(a) /= 2) print *,2,size(a)
    r=size(a)+n
  end procedure
end
submodule(k4)smod3
contains
  module procedure sub3
      use k3
    if (size(a) /= 3) print *,3,size(a)
    r=size(a)+n
  end procedure
end
submodule(k4)smod4
contains
  module procedure sub4
    if (size(a) /= 4) print *,4,size(a)
    r=size(a)+n
  end procedure
end

use k4
integer::a(8)
call=sub1(a)
if (call/=1*2) print *,201
call=sub2(a)
if (call/=2*2) print *,202
call=sub3(a)
if (call/=3*2) print *,203
call=sub4(a)
if (call/=4*2) print *,204
print *,'pass'
end

