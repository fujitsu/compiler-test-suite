module mod1
  integer,target :: iii = 100
end module

module mod2
  use mod1
  integer,pointer :: jjj =>null()
  contains
  subroutine sub()
    jjj =>iii
  end subroutine
end module

use mod2
call sub()
if (jjj/=100)write(6,*) "NG"
print *,'pass'
end
