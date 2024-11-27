module mod1
  integer,target,protected :: II1

  integer,protected,target :: II2

  integer,protected ::II3
   target :: II3

   target :: II4
  integer,protected ::II4

   protected :: II5
  integer,target ::II5

  integer,target ::II6
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
