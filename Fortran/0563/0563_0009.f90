character(len=3), allocatable :: a1(:)
character(len=:), allocatable :: a2(:)
character(len=3), allocatable :: a3(:)
call s1(a1,a2,a3)
contains
subroutine s1(c1,c2,c3)
character(len=*),allocatable ::  c1(:)
character(len=:),allocatable ::  c2(:)
character(len=*),allocatable ::  c3(:)
allocate(c1,c2,c3,source=(/"ABC","ABC","ABC"/))

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
end
