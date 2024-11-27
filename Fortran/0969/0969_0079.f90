module mod01
type, bind(c) ::  mty01
 integer :: ii01
end type

end module

use, intrinsic ::  iso_c_binding
use mod01

type ty01
 integer :: ii01
end type

type (mty01), target       :: mtt01_01,  mtt01_02(1)
type (ty01),  target       :: tt01_01,   tt01_02(1)

type (mty01), pointer      :: mtt01_p01, mtt01_p02(:)
type (ty01),  pointer      :: tt01_p01,  tt01_p02(:)

logical(kind = 1), target  :: ll01_01,   ll01_02(1)
logical(kind = 4), target  :: ll04_01,   ll04_02(1)

logical(kind = 1), pointer :: ll01_p01,  ll01_p02(:)
logical(kind = 4), pointer :: ll04_p01,  ll04_p02(:)

type(c_ptr) :: cptr

mtt01_p01 => mtt01_01
mtt01_p02 => mtt01_02

tt01_p01  => tt01_01
tt01_p02  => tt01_02

ll01_p01  => ll01_01
ll01_p02  => ll01_02

ll04_p01  => ll04_01
ll04_p02  => ll04_02

if(.not.c_associated(c_loc(mtt01_01), c_loc(mtt01_p01))) print *,'error 01'
if(.not.c_associated(c_loc(mtt01_02), c_loc(mtt01_p02))) print *,'error 02'
if(.not.c_associated(c_loc(tt01_01),  c_loc(tt01_p01))) print *,'error 03'
if(.not.c_associated(c_loc(tt01_02),  c_loc(tt01_p02))) print *,'error 04'

if(.not.c_associated(c_loc(ll01_01),  c_loc(ll01_p01))) print *,'error 05'
if(.not.c_associated(c_loc(ll01_02),  c_loc(ll01_p02))) print *,'error 06'
if(.not.c_associated(c_loc(ll04_01),  c_loc(ll04_p01))) print *,'error 07'
if(.not.c_associated(c_loc(ll04_02),  c_loc(ll04_p02))) print *,'error 08'

print *,'pass'

end
