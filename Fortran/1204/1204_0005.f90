module m1
  type y
    integer::y1
  end type
  type,extends(y)::yy
    integer,allocatable::y4(:)
  end type
    class(y),allocatable::x3
contains
  subroutine set()
  m=2
  allocate(x3)
  x3%y1=1
    deallocate(x3)
  end
end
subroutine tt
use m1
call set( )
end

 call tt
print *,'sngg729q : pass'
end
