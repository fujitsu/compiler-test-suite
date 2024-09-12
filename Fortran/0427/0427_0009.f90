module mod0
contains
subroutine sub
  print *,'sub'
end subroutine
end

module mod
contains
subroutine sub1
  print *,'sub1'
end subroutine
end module

module mod1
use mod0
use mod
private
public:: sub
public:: sub1
end 

use mod1
implicit none
call sub
call sub1
end
