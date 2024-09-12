module m1
integer,parameter:: n=32
integer,parameter:: nn=16
  real(4):: a1(3),a2(3),a3(3)
 interface
    module subroutine sub
    end subroutine
  end interface
contains
subroutine ss
   if (mod(loc(a1),nn)/=0) print *,101
   if (mod(loc(a2),nn)/=0) print *,102
   if (mod(loc(a3),nn)/=0) print *,103
end
end
submodule (m1) mm1
  real(4):: b1(3),b2(3),b3(3)
contains
  module procedure sub
   if (mod(loc(a1),nn)/=0) print *,201
   if (mod(loc(a2),nn)/=0) print *,202
   if (mod(loc(a3),nn)/=0) print *,203
   if (mod(loc(b1),nn)/=0) print *,301
   if (mod(loc(b2),nn)/=0) print *,302
   if (mod(loc(b3),nn)/=0) print *,303
end
end
subroutine s 
 use m1
common /x1/c1,c2,c3
common /x2/c4
common /x3/c5
  real(4):: c1(3),c2(3),c3(3)
   if (mod(loc(c1),nn)/=0) print *,401
   if (mod(loc(c4),nn)/=0) print *,402
   if (mod(loc(c5),nn)/=0) print *,403
   if (loc(c2)-loc(c1)/=12+64) print *,404
end
use m1
call ss
call sub
call s
print *,'pass'
end
