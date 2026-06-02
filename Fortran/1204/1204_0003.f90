module m1
  type y
    integer::y1
  end type
  type,extends(y)::yy
    integer,allocatable::y4(:)
  end type
  type x
    integer::x1
    class(y),allocatable::x3
  end type
contains
  subroutine set()
    type(x)::var(3)
  m=2
  allocate(var(m)%x3)
  var(m)%x1=1
    deallocate(var(m)%x3)
  end
end
subroutine tt
use m1
call set( )
end

 call tt
print *,'sngg727q : pass'
end
