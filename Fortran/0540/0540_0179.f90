module k 
type base
  contains
   procedure,nopass::prc1
end type
contains
subroutine prc1()
  write(6,*)1000
end subroutine
end
module kk 
use k
end
module kkk
use kk
type, extends(base)::ext
  contains
   procedure,nopass::cproc1
end type
private::ext
contains
subroutine cproc1()
  write(6,*)4000
end subroutine
end module

module n 
type base
  contains
   procedure,nopass::prc1
end type
contains
subroutine prc1()
  write(6,*)100
end subroutine
end
module nn 
use n
end
module nnn
use nn
type, extends(base)::ext
  contains
   procedure,nopass::cproc1
end type
private::ext
contains
subroutine cproc1()
  write(6,*)410
end subroutine
end module

module m
type base
  contains
   procedure,nopass::prc1
end type
contains
subroutine prc1()
end subroutine
end
module mm
use m
end
module mmm
use mm
type, extends(base)::ext
  contains
   procedure,nopass::cproc1
end type
contains
subroutine cproc1()
  write(6,*)400
end subroutine
end module
module xmm
contains
  subroutine xmms(x,y)
    use mmm
    type(base)::x
    type(ext  )::y
   end
end
module xmm2
contains
  subroutine xmms(x,y)
    use nnn 
type ext
end type
    type(base)::x
    type(ext  )::y
   end
end

use kkk
use nnn
use mmm, only:ext 
use xmm
use xmm2

type(ext)::var
call var%prc1()
print *,'pass'
end
