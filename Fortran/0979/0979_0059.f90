module mod1
  integer,protected,allocatable :: II1(:)

  integer,allocatable,protected :: II2(:)

  integer,protected :: II3 
   allocatable :: II3(:)

   allocatable :: II4(:)
  integer,protected :: II4

  integer,allocatable :: II5(:)
   protected :: II5

   protected :: II6
  integer,allocatable :: II6(:)
  
 contains
  subroutine sub(III)
    integer :: III
    allocate(II1(1),II2(1),II3(1),II4(1),II5(1),II6(1))
    II1 =1
    II2 =2
    II3 =3
    II4 =4
    II5 =5
    II6 =6
    III = II1(1) + II2(1) + II3(1) + II4(1) + II5(1) + II6(1)
  end subroutine
end module

use mod1
integer :: III
call sub(III)
if (III .ne. 21) write(6,*) "NG"
print *," pass"
end
