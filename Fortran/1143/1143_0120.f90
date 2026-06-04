module e0                     ! 1)
integer(8)::en=8        ! 4)
namelist/nme/en
end
module d0                     ! 1)
use e0
integer(8)::dn=8        ! 4)
namelist/nmd/dn
end
module c0                     ! 1)
use d0
integer(8)::cn=8        ! 4)
namelist/nmc/cn
end
module b0                     ! 1)
use c0
integer(8)::bn=8        ! 4)
namelist/nmb/bn
end
module a0                     ! 1)
use b0
integer(8)::an=8        ! 4)
namelist/nma/an
end
module m1                     ! 2) , 7)
  use a0                      ! 3) , 4)
  private
  public::sub1
  interface
     module subroutine sub1()
     end subroutine
  end interface
end module m1

submodule (m1) submod          ! 6), 7)
       implicit none
  real(kind=kind(an)) :: a01          ! 8)
  real(kind=kind(bn)) :: a02          ! 8)
  real(kind=kind(cn)) :: a03          ! 8)
  real(kind=kind(dn)) :: a04          ! 8)
  real(kind=kind(en)) :: a05          ! 8)
contains
  module subroutine sub1()
    real(kind=kind(en)) :: b05        ! 8)
    real(kind=kind(dn)) :: b04        ! 8)
    real(kind=kind(cn)) :: b03        ! 8)
    real(kind=kind(bn)) :: b02        ! 8)
    real(kind=kind(an)) :: b01        ! 8)
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
write(1,nma)
write(1,nmb)
write(1,nmc)
write(1,nmd)
write(1,nme)
  end subroutine sub1
end 

use m1
call sub1
call chk
print *,'sngg276n : pass'
end
subroutine chk
namelist /nma/ an
namelist /nmb/ bn
namelist /nmc/ cn
namelist /nmd/ dn
namelist /nme/ en
rewind 1
read(1,nma)
if (an/=8) print *,101
read(1,nmb)
if (bn/=8) print *,111
read(1,nmc)
if (cn/=8) print *,102
read(1,nmd)
if (dn/=8) print *,1014
read(1,nme)
if (en/=8) print *,1015
end
