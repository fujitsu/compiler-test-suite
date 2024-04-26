module m1
integer ,allocatable :: a0(:)
integer ,allocatable :: a01(:)
integer ,allocatable :: a02(:)
end

module m2
use m1,b0=>a0,b01=>a01,b02=>a02
end

module m3
use m1,only:c0=>a0
use m2
end

module m4
use m1,only:c01=>a01
use m3
end

use m1
use m4
allocate (a0(10))
allocate (a01(10))
print *,'pass'
end
