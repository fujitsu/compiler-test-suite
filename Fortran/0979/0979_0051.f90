module mod1
  protected :: II1
  integer,allocatable :: II1(:)
  protected :: II2
  integer,dimension(10) :: II2
  protected :: II3
  integer,save :: II3
  protected :: II4
  integer,public :: II4
  protected :: II5
  integer,private :: II5
  protected :: II6
  integer,pointer :: II6
  protected :: II7
  integer,target :: II7
  protected :: II8
  integer,volatile :: II8
  
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
