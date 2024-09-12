module m1
integer,parameter:: n=16
  real(4):: a1(3),a2(3),a3(3)
 interface
    module subroutine sub
    end subroutine
  end interface
end
submodule (m1) mm1
  real(4):: b1(3),b2(3),b3(3)
contains
  module procedure sub
   if (mod(loc(a1),n)/=0) print *,201
   if (mod(loc(a2),n)/=0) print *,202
   if (mod(loc(a3),n)/=0) print *,203
   if (mod(loc(b1),n)/=0) print *,301
   if (mod(loc(b2),n)/=0) print *,302
   if (mod(loc(b3),n)/=0) print *,303
end
end
use m1
call sub
print *,'pass'
end
