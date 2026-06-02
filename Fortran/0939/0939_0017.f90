MODULE mod1
 type point
  integer::ii
 end type
 interface  assignment(=)
 elemental  SUBROUTINE assign_point (px,ax)
  import::point
  integer, INTENT(out) :: px
  type(point), INTENT(in),asynchronous :: ax
  END SUBROUTINE assign_point
 end interface

END MODULE mod1

use mod1
integer::ii(3),vv(3)=[1,2,3]
type(point)::rr(3)
rr=[point(10),point(20),point(30)]
ii=rr(vv)
if(any (ii/= [10,20,30])) print*,"101"
rr=[point(40),point(50),point(60)]
ii(vv)=rr
if(any (ii/= [40,50,60])) print*,"102"
print*,"PASS"
end
  elemental SUBROUTINE assign_point (px,ax)
  use mod1
  integer, INTENT(out) :: px
  type(point), INTENT(in),asynchronous :: ax
  px=ax%ii
  END SUBROUTINE assign_point
