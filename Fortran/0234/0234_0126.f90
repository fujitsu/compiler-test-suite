module m1
  type base
    integer::x1=1
  end type
end
module m2
  type base
    integer::x1=2
  end type
  private::base
end
module m3
use m1
use m2
end
module xmm
contains
  subroutine xmms(x,y)
    use m3
    type(base)::x
type ext
end type
    type(ext  )::y
   end
end
use xmm
use m3
type,extends(base)::ext
  integer::y
end type
type(ext)::var
if (var%x1/=1) print *,1010
print *,'pass'
end
