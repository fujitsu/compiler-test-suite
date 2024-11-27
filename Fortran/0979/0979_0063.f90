module mod1
  integer,save,protected :: II1

  integer,protected,save :: II2

  save :: II3
  integer,protected :: II3

  integer,protected :: II4
  save :: II4

  protected :: II5
  integer,save :: II5

  integer,save :: II6
  protected :: II6
  
 contains
  subroutine sub(III)
    integer :: III
    II1 =1
    II2 =2
    II3 =3
    II4 =4
    II5 =5
    II6 =6
    III = II1 + II2 + II3 + II4 + II5 + II6
  end subroutine
end module

use mod1
integer :: III
call sub(III)
if (III .ne. 21) write(6,*) "NG"
print *," pass"
end
