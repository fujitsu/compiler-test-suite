
module m
  integer,allocatable :: a0,a1
end

module m2
  use m,b0=>a0
end

use m
use m2
print *,'pass'
end
