module mod0
real va
end 

module mod11
real vb
end 

module mod
use mod0,only:va
use mod11,only:vb
implicit none
public:: va
public:: vb
end 

module mod1
use mod
contains
subroutine sub
implicit none
va=1
vb=1
print *,'pass'
end subroutine
end 

use mod1
call sub
end
