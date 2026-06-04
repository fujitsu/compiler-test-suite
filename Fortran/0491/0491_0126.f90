module m3
  implicit none
  interface
    module subroutine sub(k1,k2,k3)
    implicit none
    integer,pointer::k1(:)
    integer,allocatable::k2(:)
    integer::k3(..)
    end subroutine
  end interface
end

submodule(m3)smod
contains
  module procedure sub
allocate(k1(2:3),source=1)
allocate(k2(12:13),source=2)
if (rank(k3)/=1) print *,202
  end procedure
end

use m3
    integer,pointer::k1(:)
    integer,allocatable::k2(:)
    integer::k3(2)
call sub(k1,k2,k3)
if (any(k1/=1)) print*,201
if (any(ubound(k1)/=3)) print*,203
if (any(k2/=2)) print*,2011
if (any(ubound(k2)/=13)) print*,2031
print *,'pass'
end
