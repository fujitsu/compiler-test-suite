module mod1
  integer,protected,dimension(10) :: II1

  integer,dimension(10),protected :: II2
  
  protected :: II3
  integer,dimension(10) :: II3

  integer,dimension(10) :: II4
  protected :: II4

  dimension :: II5(10)
  integer,protected :: II5

  integer,protected :: II6
  dimension :: II6(10)

 contains
  subroutine sub(III)
    integer :: III
    II1 =1
    II2 =2
    II3 =3
    II4 =4
    II5 =5
    II6 =6
    III = II1(1) + II2(2) + II3(3) + II4(4) + II5(5) + II6(6)
  end subroutine
end module

use mod1
integer :: III
call sub(III)
if (III .ne. 21) write(6,*) "NG"
print *," pass"
end
