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
  type,extends(y1)::ty
    integer :: kk=100
  end type
end
module m4
use m3
  type(ty) :: y

  interface
    module subroutine sub(bb)
      integer :: bb(y%y1%i)
    end subroutine
  end interface
end

print *,'pass'
end
