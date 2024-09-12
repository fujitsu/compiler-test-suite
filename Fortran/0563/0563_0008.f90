character(len=3), allocatable :: ch(:)
character (len=3), allocatable, dimension(:) :: a1,a2
character (len=3), allocatable :: a3(:)
call s1(a1,a2,a3,ch)
  contains
  subroutine s1(ch1,ch2,ch3,ch)
  character(len=*), allocatable::  ch(:)

  character(len=*), allocatable::  ch1(:)
  character(len=*), allocatable::  ch2(:)
  character(len=*), allocatable::  ch3(:)
  allocate(ch(3))
  ch='ABC'

  allocate(ch1,ch2(3),ch3(3:5),source=ch)
  if(any(ch1.ne.'ABC')) print*,101
  if(any(ch2.ne.'ABC')) print*,102
  if(any(ch3.ne.'ABC')) print*,103
  if(len(ch1).ne.3) print*,104
  if(len(ch2).ne.3) print*,105
  if(len(ch3).ne.3) print*,106
  if(size(ch1).ne.3) print*,107
  if(size(ch2).ne.3) print*,108
  if(size(ch3).ne.3) print*,109
  if(lbound(ch1,1).ne.1) print*,110
  if(lbound(ch2,1).ne.1) print*,111
  if(lbound(ch3,1).ne.3) print*,112
  if(ubound(ch1,1).ne.3) print*,113
  if(ubound(ch2,1).ne.3) print*,114
  if(ubound(ch3,1).ne.5) print*,115
  print*,'pass'
    end subroutine
end
