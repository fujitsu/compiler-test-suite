character(len=3), allocatable :: ch(:)
integer :: a1=3
call s1(a1,ch)
    contains
    subroutine s1(d1,ch1)
    character(len=*), allocatable::  ch1(:)
    integer :: d1

    character(len=d1), allocatable::  ch2(:),ch3(:)
    allocate(ch1(3))
    ch1='ABC'

    allocate(ch2,ch3(3:5),source=ch1)
    if(any(ch2.ne.'ABC')) print*,101
    if(any(ch3.ne.'ABC')) print*,102
    if(len(ch2).ne.3) print*,103
    if(len(ch3).ne.3) print*,104
    if(size(ch2).ne.3) print*,105
    if(size(ch3).ne.3) print*,106
    if(lbound(ch2,1).ne.1) print*,107
    if(lbound(ch3,1).ne.3) print*,108
    if(ubound(ch2,1).ne.3) print*,109
    if(ubound(ch3,1).ne.5) print*,110
    print*,"pass"
    end subroutine
end
