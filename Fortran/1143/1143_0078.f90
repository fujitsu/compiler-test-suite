module e0                     ! 1)
integer,parameter::en=-8        ! 4)
end
module d0                     ! 1)
use e0
integer,parameter::dn=-8        ! 4)
end
module c0                     ! 1)
use d0
integer,parameter::cn=-8        ! 4)
private::en
end
module b0                     ! 1)
use c0
integer,parameter::bn=-8        ! 4)
private
integer,parameter::en=8        ! 4)
public::en
end
module a0                     ! 1)
use b0
integer,parameter::an=8        ! 4)
integer,parameter::bn=8        ! 4)
integer,parameter::cn=8        ! 4)
integer,parameter::dn=8        ! 4)
private
public::an,bn,cn,dn,en
end
module m1                     ! 2) , 7)
  use a0                      ! 3) , 4)
private::an,bn,cn,dn,en
  public::sub1
  interface
     module subroutine sub1()
     end subroutine
  end interface
end module m1

submodule (m1) submod          ! 6), 7)
       implicit none
  real(kind=an) :: a01          ! 8)
  real(kind=bn) :: a02          ! 8)
  real(kind=cn) :: a03          ! 8)
  real(kind=dn) :: a04          ! 8)
  real(kind=en) :: a05          ! 8)
contains
  module subroutine sub1()
    real(kind=en) :: b05        ! 8)
    real(kind=dn) :: b04        ! 8)
    real(kind=cn) :: b03        ! 8)
    real(kind=bn) :: b02        ! 8)
    real(kind=an) :: b01        ! 8)
if (kind(b01)/=8)print *,1001
if (kind(b02)/=8)print *,1001
if (kind(b03)/=8)print *,1001
if (kind(b04)/=8)print *,1001
if (kind(b05)/=8)print *,1001
if (kind(a01)/=8)print *,1001
if (kind(a02)/=8)print *,1001
if (kind(a03)/=8)print *,1001
if (kind(a04)/=8)print *,1001
if (kind(a05)/=8)print *,1001
  end subroutine sub1
end 

use m1
call sub1
print *,'sngg228n : pass'
end
