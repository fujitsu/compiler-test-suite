module mod0
real,parameter:: va=2.0
end 
module mod00
real,parameter:: vb=2.0
end 

module mod1
use mod0
use mod00
private:: vb
contains
subroutine sub
if (va.ne.2.0) call errtra
print *,'pass'
end subroutine
end 

use mod1
call sub()
end
