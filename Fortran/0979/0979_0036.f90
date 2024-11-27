module mod1
  integer,protected,allocatable :: II1(:)
  integer,protected,dimension(10) :: II2
  integer,protected,save :: II3
  integer,protected,public :: II4
  integer,protected,private :: II5
  integer,protected,pointer :: II6
  integer,protected,target :: II7
  integer,protected,volatile :: II8
  
 contains
  subroutine sub(III)
    integer :: III
    allocate(II1(1))
    II1 =1
    II2 = II1(1)+ II1(1)
    II3=3
    II4=4
    II5=5
    II7=7
    II8=8
    III = II1(1)+ II2(10)+ II3+ II4+ II5+ II7+ II8    
  end subroutine
end module

use mod1
integer :: III
call sub(III)
if (III .ne. 30) write(6,*) "NG"
print *," pass"
end
