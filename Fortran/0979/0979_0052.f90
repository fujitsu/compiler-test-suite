module mod1
  integer,protected :: II1
  allocatable :: II1(:)
  integer,protected :: II2
   dimension :: II2(10)
  integer,protected :: II3
   save :: II3
  integer,protected :: II4
   public :: II4
  integer,protected :: II5
   private :: II5
  integer,protected :: II6
   pointer :: II6
  integer,protected :: II7
   target :: II7
  integer,protected :: II8
   volatile :: II8
  
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
