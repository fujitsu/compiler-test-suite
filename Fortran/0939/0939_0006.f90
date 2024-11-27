module m1
 contains
 impure elemental subroutine s( x,y,d3 )
 integer,intent(out)::x
 integer,intent(inout)::y
 integer,intent(in),asynchronous::d3
 if(y /= d3) print*,102
 x=y+10
 y=y+20
 end subroutine
end module

use m1
 integer:: a(6)=[11,12,13,15,16,17],v(3)=[3,1,2],arr(3)=[15,16,17],v2(3)=[1,2,3]
 call s( a(v),a([4,5,6]),arr(v2))
 if (any(a/=[26,27,25,35,36,37])) print *,101,a
 print *,'PASS'
end


