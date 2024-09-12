implicit none
character(len=:), allocatable :: a1
character(len=:), allocatable :: a2
call s1(a1,a2)
contains
subroutine s1(c1,c2)
character(len=:),allocatable ::  c1
character(len=:),allocatable ::  c2
allocate(c1,c2,source="ABC")
  if(c1.ne.'ABC')print*,101
  if(c2.ne.'ABC')print*,102
  if(len(c1).ne.3)print*,103
  if(len(c2).ne.3)print*,104
  print*,'pass'
end subroutine
end
