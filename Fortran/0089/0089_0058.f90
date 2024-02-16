module nn           
type base         
  contains
   procedure,nopass::prc1  
end type

type ext                  
end type
private
public::base

contains
subroutine prc1()
  write(6,*)100
end subroutine
subroutine cproc1()
  write(6,*)200
end subroutine
end module

module mm                
type base
  contains
   procedure,nopass::prc2    
end type

type::ext    
  contains
   procedure,nopass::prc1=>cproc1
end type
contains
subroutine prc1()
  write(6,*)300
end subroutine
subroutine prc2()
  write(6,*)500
end subroutine
subroutine cproc1()
  write(4,*)400
end subroutine
end module

use nn
use mm, only:ext

type(ext)::tc1
call tc1%prc1()
rewind 4
read(4,*) k
if (k/=400) print *,4001
read(4,*,end=400) k
print *,40021
400 continue

print *,'pass'
end
