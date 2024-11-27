type str1
  integer,allocatable :: all(:)
end type

type(str1),allocatable :: from(:)
type(str1),allocatable :: to(:)

allocate(from(-10:-1),to(1:20))
allocate(from(-5)%all(10))
from(-5)%all = 10
to(::2) = from

call move_alloc(from=to,to=from)

if ( allocated(from(1)%all)) print *,' alloc1'
if ( allocated(from(2)%all)) print *,' alloc2'
if ( allocated(from(3)%all)) print *,' alloc3'
if ( allocated(from(4)%all)) print *,' alloc4'
if ( allocated(from(5)%all)) print *,' alloc5'
if ( allocated(from(6)%all)) print *,' alloc6'
if ( allocated(from(7)%all)) print *,' alloc7'
if ( allocated(from(8)%all)) print *,' alloc8'
if ( allocated(from(9)%all)) print *,' alloc9'
if ( allocated(from(10)%all)) print *,' alloc10'
if ( .not.allocated(from(11)%all)) print *,' not alloc11'
if ( allocated(from(12)%all)) print *,' alloc12'
if ( allocated(from(13)%all)) print *,' alloc13'
if ( allocated(from(14)%all)) print *,' alloc14'
if ( allocated(from(15)%all)) print *,' alloc15'
if ( allocated(from(16)%all)) print *,' alloc16'
if ( allocated(from(17)%all)) print *,' alloc17'
if ( allocated(from(18)%all)) print *,' alloc18'
if ( allocated(from(19)%all)) print *,' alloc19'
if ( allocated(from(20)%all)) print *,' alloc20'
print *,'pass'

end
