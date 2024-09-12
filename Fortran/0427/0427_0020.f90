module mod0
real va
end 
module mod
use mod0
implicit none
private
end 
module mod1
use mod
use mod0
contains
subroutine sub
implicit none
va=1
print *,'pass'
end subroutine
end 

use mod1
call sub()
end
