module nn
type b
  contains
   procedure,nopass::prc0
end type

type ext
  contains
   procedure,nopass::prc1
end type
private
public::b

contains
subroutine prc0()
  write(1,*)100
end subroutine
subroutine prc1()
  write(6,*)200
end subroutine
end module

module mm
type base
  contains
   procedure,nopass::prc1
end type

type, extends(base)::ext
  contains
   procedure,nopass::prc1=>cproc1
end type
private
public::ext
contains
subroutine prc1()
  write(6,*)300
end subroutine
subroutine cproc1()
  write(4,*)400
end subroutine
end module

module xmm
contains
  subroutine xmms(x,y)
    use mm
type base
end type
    type(base)::x
    type(ext  )::y
   end
end
module xmm2
contains
  subroutine xmms(x,y)
    use nn   
    type(b)::x
type ext
end type
    type(ext  )::y
   end
end
use xmm
use xmm2
use nn
use mm

type(b)::tc0
type(ext)::tc1
call tc0%prc0()
call tc1%prc1()
rewind 1
read(1,*) k
if (k/=100) print *,1001
read(1,*,end=100) k
print *,10021
100 continue
rewind 4
read(4,*) k
if (k/=400) print *,4001
read(4,*,end=400) k
print *,40021
400 continue

print *,'pass'
end
