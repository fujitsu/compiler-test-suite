character(len = :),allocatable :: ch1(:)
character(len = 10) :: ch2(10)
ch2 ='a'
allocate(ch1,source=ch2)
call sub(ch1(1:10:2))
        contains
        subroutine sub(x)
        character(len = *) :: x(..)
        if(len(x) /= 10) print*,"101"
        if(any(lbound(x) /= 1)) print*,"102"
        if(any(ubound(x) /= 5)) print*,"103"
        if(any(shape(x) /= 5)) print*,"104"
        if(size(x) /= 5) print*,"105"
        print*,"PASS"
        end subroutine
end
