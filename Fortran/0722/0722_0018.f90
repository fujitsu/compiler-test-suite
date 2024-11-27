module mod
intrinsic sin
procedure(sin):: a
end module

use mod,only: aa=>a
procedure(aa):: b
end

