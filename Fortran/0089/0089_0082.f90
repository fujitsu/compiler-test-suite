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
  write(6,*) 'NG call'
end subroutine
end module

module mm                
type base
end type

type, extends(base)::ext    
  contains
   procedure,nopass::prc1
end type
public::ext
private::base
contains
subroutine prc1()
  write(4,*)400
end subroutine
end module

use nn
use mm

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
