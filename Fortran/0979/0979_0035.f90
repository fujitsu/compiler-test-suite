module mod1
  integer,allocatable,protected :: II1(:)
  integer,dimension(10),protected :: II2
  integer,save,protected :: II3
  integer,public,protected :: II4
  integer,private,protected :: II5
  integer,pointer,protected :: II6
  integer,target,protected :: II7
  integer,volatile,protected :: II8
  
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
