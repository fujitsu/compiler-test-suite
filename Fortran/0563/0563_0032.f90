implicit none
character(len=:), allocatable :: a1(:)
character(len=:), allocatable :: a2(:,:)
call s1(a1,a2)
contains
subroutine s1(c1,c2)
character(len=:),allocatable ::  c1(:)
character(len=:),allocatable ::  c2(:,:)
allocate(c1(3),c2(2,2),source="ABC")
  if(any(c1.ne.'ABC'))print*,101
  if(any(c2.ne.'ABC'))print*,102
  if(len(c1).ne.3)print*,103
  if(len(c2).ne.3)print*,104
  if(lbound(c1,1).ne.1)print*,106
  if(ubound(c1,1).ne.3)print*,107
  if(lbound(c2,2).ne.1)print*,108
  if(ubound(c2,2).ne.2)print*,109
  print*,'pass'
end subroutine
end
