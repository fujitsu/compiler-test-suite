subroutine sub01(arg1,arg2) 
character(:),parameter :: tt1*2="ab",tt2*3="cde"
character(:),allocatable :: arg1,arg2
allocate(character(len(tt1)) :: arg1)
allocate(character(len(tt2)) :: arg2)
arg1 = tt1
arg2 = tt2
end subroutine

subroutine sub02(arg1,arg2) 
character(:),parameter :: tt1*2="ab",tt2*3="cde"
character(:),allocatable :: arg1,arg2
allocate(character(len(tt1)) :: arg1)
allocate(character(len(tt2)) :: arg2)
arg1 = tt1
arg2 = tt2
end subroutine

interface
subroutine sub01(arg1,arg2)
character(:) :: arg1,arg2
allocatable :: arg1,arg2
end subroutine
subroutine sub02(arg1,arg2)
character(:) :: arg1,arg2
allocatable :: arg1,arg2
end subroutine
end interface

character(:),allocatable :: aaa
character(:),allocatable :: bbb
call sub01(aaa,bbb)
if ( aaa .ne. "ab" ) print *,'fail'
if ( bbb .ne. "cde" ) print *,'fail'
if (allocated(aaa)) deallocate(aaa)
if (allocated(bbb)) deallocate(bbb)
call sub02(aaa,bbb)
if ( aaa .ne. "ab" ) print *,'fail'
if ( bbb .ne. "cde" ) print *,'fail'
print *,'ok'
end
