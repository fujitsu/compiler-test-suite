integer :: a1=3
call s1(a1)
contains
subroutine s1(d1)
integer :: d1
character(len=d1),allocatable ::  c1(:),c2(:),c3(:)
 allocate(c1,c2,c3,source=fun())
  if(any(c1.ne.'ABC')) print*,101
  if(any(c2.ne.'ABC')) print*,102
  if(any(c3.ne.'ABC')) print*,103
  if(len(c1).ne.3) print*,104
  if(len(c2).ne.3) print*,105
  if(len(c3).ne.3) print*,106
  if(size(c1).ne.3) print*,107
  if(size(c2).ne.3) print*,108
  if(size(c3).ne.3) print*,109
  if(lbound(c1,1).ne.1) print*,110
  if(lbound(c2,1).ne.1) print*,111
  if(lbound(c3,1).ne.1) print*,112
  if(ubound(c1,1).ne.3) print*,113
  if(ubound(c2,1).ne.3) print*,114
  if(ubound(c3,1).ne.3) print*,115
  print*,'pass'
end subroutine
function fun()
  character(len=3), dimension(3) :: fun
  fun="ABC"
end function fun
end
