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
private ::ext
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
private::base
public::ext
end
subroutine s1
use m3
use n3
type(ext)::v
call v%prc()
end
call s1
print *,'pass'
end
