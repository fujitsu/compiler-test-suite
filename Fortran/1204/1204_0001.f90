module m1
  type y
    integer::y1
  end type
  type,extends(y)::yy
    integer,allocatable::y4(:)
  end type
  type x
    integer::x1
    class(y),allocatable::x3(:)
  end type
  type (x)::var1(3)
contains
  subroutine set(var)
    type(x)::var(:)
  m=2
  allocate(var(m)%x3(m))
  var(m)%x1=1
    deallocate(var(m)%x3)
  end
end
subroutine tt
use m1
call set(var1 )
end

 call tt
print *,'sngg725q : pass'
end
