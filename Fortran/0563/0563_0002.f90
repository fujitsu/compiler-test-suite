character(len=3), allocatable :: ch
character (len=3), allocatable :: a1
character (len=:), allocatable :: a2
character (len=3), allocatable :: a3
call s1(a1,a2,a3,ch)
    contains
    subroutine s1(d1,d2,d3,ch1)
    character(len=*), allocatable::  ch1

    character(len=*), allocatable::  d1
    character(len=:), allocatable::  d2
    character(len=3), allocatable::  d3
    allocate(ch1)
    ch1='ABC'

    allocate(d1,d2,d3,source=ch1)
    if(d1.ne.'ABC')print*,101
    if(d2.ne.'ABC')print*,102
    if(d3.ne.'ABC')print*,103
    if(len(d1).ne.3)print*,104
    if(len(d2).ne.3)print*,105
    if(len(d3).ne.3)print*,106
    print*,"pass"
    end subroutine
end
