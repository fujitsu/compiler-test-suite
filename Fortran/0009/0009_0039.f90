module m1
  integer::a1
  integer::a2=2
  integer::ax
  integer::a3
end
module m2
  integer::b1
  integer::bx
  integer::b2=2
  integer::b3
end
module m3
  integer::c1
  integer::cx
  integer::c2=2
  integer::c3
end
module m4
  integer::d1
  integer::dx
  integer::d2=2
  integer::d3
end
module m5
use m1,only:a1,a2,a3
use m2,only:b1
use m3,only:c3
use m4,only:d1,d2,d3
private
public:: s5
 contains
  subroutine s5
use m2,only:b2,b3
use m3,only:c1,c2
   a1=2
   a3=2
   b1=2
   b3=2
   c1=2
   c3=2
   d1=2
   d3=2
 end subroutine
end
subroutine x1
 use m1
 use m2
 use m3
 use m4
 if (a1/=2 .or. a2/=2 .or. a3/=2) print *,101,a1,a2,a3
 if (b1/=2 .or. b2/=2 .or. b3/=2) print *,102,b1,b2,b3
 if (c1/=2 .or. c2/=2 .or. c3/=2) print *,103,c1,c2,c3
 if (d1/=2 .or. d2/=2 .or. d3/=2) print *,104,d1,d2,d3
end
use m5
  integer::d1
  integer::dx
  integer::d2=2
  integer::d3
  integer::c1
  integer::cx
  integer::c2=2
  integer::c3
call s5
call x1
print *,'OK'
end
