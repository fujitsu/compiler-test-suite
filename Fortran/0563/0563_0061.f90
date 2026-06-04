implicit none
integer :: a1=4
call s1(a1)
    contains
    subroutine s1(d1)
    character(len=d1) ::  ch1
    integer :: d1

    character(len=:), allocatable::  c1
    character(len=:), allocatable::  c2
    ch1='TEST'

    allocate(c1,c2,source=ch1)
    if(c1.ne.'TEST')print*,101
    if(c2.ne.'TEST')print*,102
    if(len(c1).ne.4)print*,103
    if(len(c2).ne.4)print*,104
    print*,"pass"
    end subroutine
end
