character (len=3), allocatable, dimension(:,:) :: a1,a2,a3
call s1(a1,a2,a3)
  contains
  subroutine s1(ch1,ch2,ch3)
  character(len=*) , allocatable::  ch1(:,:)
  character(len=*), allocatable::  ch2(:,:)
  character(len=*), allocatable::  ch3(:,:)
  character(len=3) :: ch(3,2) = "ABC"

  allocate(ch1,ch2,ch3,source=ch)
  if(any(ch1.ne.'ABC')) print*,101
  if(any(ch2.ne.'ABC')) print*,102
  if(any(ch3.ne.'ABC')) print*,103
  if(len(ch1).ne.3) print*,104
  if(len(ch2).ne.3) print*,105
  if(len(ch3).ne.3) print*,106
  if(size(ch1).ne.6) print*,107
  if(size(ch2).ne.6) print*,108
  if(size(ch3).ne.6) print*,109
  if(lbound(ch1,1).ne.1) print*,110
  if(lbound(ch2,1).ne.1) print*,111
  if(lbound(ch3,1).ne.1) print*,112
  if(ubound(ch1,1).ne.3) print*,113
  if(ubound(ch2,1).ne.3) print*,114
  if(ubound(ch3,1).ne.3) print*,115
  if(lbound(ch1,2).ne.1) print*,116
  if(lbound(ch2,2).ne.1) print*,117
  if(lbound(ch3,2).ne.1) print*,118
  if(ubound(ch1,2).ne.2) print*,119
  if(ubound(ch2,2).ne.2) print*,120
  if(ubound(ch3,2).ne.2) print*,121
  print*,'pass'
  end subroutine
end
