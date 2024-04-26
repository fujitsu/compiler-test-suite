module m1
  type y0
    integer :: i=3
  end type
end
module m2
use m1
  type,extends(y0)::y1
    integer :: k=100
  end type
end
module m3
use m2
  type,extends(y1)::y2
    integer :: kkk=100
  end type
end
module m4
use m3
  type,extends(y2)::ty
    integer :: kk=100
  end type
end
module m5
use m4
  type(ty) :: y

  interface
    module subroutine sub(k,bb)
      integer,intent(in)::k
      integer :: bb(y%y2%y1%i)
    end subroutine
  end interface
end
submodule (m5) smod
contains
    module procedure  sub
    if (k==1) then
      if (size(bb)/=3) print *,101
     if (y%i/=3) print *,102
      bb=1
    else
      if (size(bb)/=2) print *,111
      if (y%y2%y1%i/=2) print *,201
      bb=2
    endif
    end
end
use m5
      integer :: bb(3)
call sub(1,bb)
if (any(bb/=1) ) print *,401
y%i=2
call sub(2,bb)
if (any(bb(3:)/=1) ) print *,4031
if (any(bb(:2)/=2) ) print *,4032

print *,'pass'
end
