module points
  integer,target::t1=30
  interface
     module function point_dist() result(distance)
       real :: distance
     end function point_dist
  end interface
end module points
submodule (points) points_a
contains
  module function point_dist() result(distance)
    real :: distance
    integer,pointer::ptr=>t1
    distance =10.0
    if(associated(ptr).neqv..true.)print*,"101"
  end function point_dist
subroutine sub()
  integer,pointer::ptr3=>t1
  if(associated(ptr3).neqv..true.)print*,"102"
end subroutine
end submodule points_a

call subex()
print*,"PASS"
end
subroutine subex()
use points
    integer,pointer::ptr=>t1
    integer,pointer::ptr2
    data ptr2 /t1/
  if(associated(ptr).neqv..true.)print*,"109"
  if(associated(ptr2).neqv..true.)print*,"110"
  if(point_dist().ne.10.0)print*,"111"
  if(ptr.ne.30)print*,"112"
end subroutine
