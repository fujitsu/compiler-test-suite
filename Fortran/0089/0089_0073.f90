module mod1      
type base    
  contains
   procedure,nopass::prc1   
end type
type, extends(base)::ext   
end type
contains
subroutine prc1()
  write(6,*)100
end subroutine
subroutine cproc1()
  write(6,*)200
end subroutine
end module

module mod2       
type base    
  contains
   procedure,nopass::prc1  
end type
type, extends(base)::ext 
  contains
   procedure,nopass::cproc1
end type
contains
subroutine prc1()
  write(3,*)300
end subroutine
subroutine cproc1()
  write(6,*)400
end subroutine
end module

use mod1, only:base     
use mod2 , only:ext    

type(ext)::tc1    
call tc1%prc1()
rewind 3
read(3,*) k
if (k/=300) print *,1100
read(3,*,end=100) k
print *,1000
100 continue
print *,'pass'
end
