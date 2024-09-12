module m11
 contains
 subroutine prc
print *,100
 end subroutine
end
module m12
 contains
 subroutine prc2
print *,200
 end subroutine
end
module m2
use m11
use m12
  type b
   contains
    procedure,nopass::prc
  end type
end
module m3
use m2
  type,extends(b)::ext
   contains
    procedure,nopass::prc2
  end type
end
module n11
 contains
 subroutine prc
 end subroutine
end
module n12
 contains
 subroutine prc2
print *,2200
 end subroutine
end
module n2
use n11
use n12
  type b
   contains
    procedure,nopass::prc
  end type
end
module n3
use n2
  type,extends(b)::ext
   contains
    procedure,nopass::prc2
  end type
end
module m4
use m3,only:b
use n3,only:ext
type(ext)::v,g
public::g
private
end
subroutine s1
use m3,only:b
use n3,only:ext
use m4
type(ext)::v
call v%prc()
end
call s1
print *,'pass'
end
