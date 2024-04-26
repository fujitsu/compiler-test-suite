module mod1
  integer :: cc
interface 
 subroutine sub
 end subroutine
end interface
end

module mod2
  integer :: aa
end

module mod3
  use mod2,only:aa
  use mod1,only:sub
end module
       
module mod4
  use mod2,only:aa
  use mod1,only:sub
end module
       
module mod5
  use mod3,only:aa
  use mod4,only:aa
  use mod4
  private :: aa
  public
end module

use mod5
call sub()
end

subroutine sub()
    print *,'pass'
end 
  subroutine  sub1()
print *,'NG'
  end subroutine
