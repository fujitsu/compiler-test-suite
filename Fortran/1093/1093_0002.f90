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
!  integer,pointer :: arr(:)
interface aaa
   ! subroutine sub1(dmy, rr)
   !   integer,contiguous,pointer,intent(in) :: dmy(:)
   !   !dmy=>dmy
   !   !rr=20
   ! end subroutine sub1
     
   subroutine sub2(dmy,ii)
     integer,           pointer :: dmy(:)
     !dmy=>dmy
     !ii=10
   end subroutine sub2
   
   subroutine sub1(dmy,rr)
     integer,           pointer :: dmy(:)
     !dmy=>dmy
     !rr=5.0
   end subroutine sub1
end interface aaa
end

module  mod
contains
  subroutine sub1m(dmy,rr)
    integer,pointer :: dmy(:)
    !dmy=>dmy
    rr=20.0
  end subroutine
end
module  mods
interface
  module subroutine sub1s(dmy,rr)
    integer,pointer :: dmy(:)
    !dmy=>dmy
    !rr=30.0
  end subroutine
end interface
end
submodule (mods) smma
contains
   module procedure sub1s
   rr = 30.0
   end 
end

use mod
use mods
use m
use aaaa

integer,pointer :: arr(:)
allocate(arr(8))
arr=1
call sub1(arr,rrr)
if (int(rrr).ne.5) print *,'err'
print *,'pass'
call sub1i(arr,rrr) 
if (int(rrr).ne.10) print *,'err'
print *,'pass'
call sub1m(arr,rrr) 
if (int(rrr).ne.20) print *,'err'
print *,'pass'
call sub1s(arr,rrr) 
if (int(rrr).ne.30) print *,'err'
print *,'pass'
contains
  subroutine sub1i(aa,rr)
    use m
    integer,pointer :: aa(:)
    rr = 10.0
  end subroutine
end
  subroutine sub2(aa,ii)
    !type(*)::aa
    integer,pointer :: aa(:)
    print *,'NG'
    ii = 100
  end subroutine
  subroutine sub1(aa,rr)
    use m
    integer,pointer :: aa(:)
    !type(t)::aa
    rr = 5.0
  end subroutine
