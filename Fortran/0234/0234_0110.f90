module nn           
type base         
  contains
   procedure,nopass::prc1  
end type

type ext                  
end type

public::base
private

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
contains
subroutine prc1()
  write(4,*)400
end subroutine
end module
module xmm
contains
  subroutine xmms(x,y)
    use mm
    type(base)::x
    type(ext  )::y
   end
end
module xmm2
contains
  subroutine xmms(x,y)
    use nn
    type(base)::x
type ext
end type
    type(ext  )::y
   end
end
use xmm
use xmm2

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
