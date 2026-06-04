module e0                     ! 1)
type en
integer::x=8        ! 4)
end type
private
public::en
end
module d0                     ! 1)
use e0
type dn
integer::x=8        ! 4)
end type
private
public::en,dn
end
module c0                     ! 1)
use d0
type cn
integer::x=8        ! 4)
end type
private
public::en,dn,cn
end
module b0                     ! 1)
use c0
type bn
integer::x=8 
end type
private
public::en,dn,cn
public::bn
end
module a0                     ! 1)
use b0
type an
integer::x=8        ! 4)
end type
private
public::an,bn,cn,dn,en
end
module m1                     ! 2) , 7)
  use a0,only:an              ! 3) , 4)
  use e0,only:en              ! 3) , 4)
  use d0,only:dn                      ! 3) , 4)
  use c0,only:cn                      ! 3) , 4)
  use b0,only:bn                      ! 3) , 4)
  private::an,bn,cn,dn,en
  public::sub1
  interface
     module subroutine sub1()
     end subroutine
  end interface
end module m1

submodule (m1) submod          ! 6), 7)
       implicit none
type(an)::a01
type(bn)::a02
type(cn)::a03
type(dn)::a04
type(en)::a05
contains
  module subroutine sub1()
type(an)::b01
type(bn)::b02
type(cn)::b03
type(dn)::b04
type(en)::b05
if (b01%x/=8)print *,1001
if (b02%x/=8)print *,1001
if (b03%x/=8)print *,1001
if (b04%x/=8)print *,1001
if (b05%x/=8)print *,1001
if (a01%x/=8)print *,1001
if (a02%x/=8)print *,1001
if (a03%x/=8)print *,1001
if (a04%x/=8)print *,1001
if (a05%x/=8)print *,1001
  end subroutine sub1
end 

use m1
call sub1
print *,'sngg358n : pass'
end
