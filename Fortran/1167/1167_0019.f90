module m1
  type base
    integer::x1=1
    contains
     final    ::bp
  end type
  contains
    subroutine bp(d)
     type (base)::d
     write(2,*)101
    end subroutine
end
module m2
 use m1
 type,extends(base)::ext
   integer::x2=2
 end type
 class(base),allocatable::v
 private
 public::v,set
contains
    subroutine set(d)
     class(base),allocatable::d
     allocate(base::v)
    end subroutine
end
use m2
     write(2,*)100
call set(v)
deallocate(v)
rewind 2
read(2,*)n;if (n/=100)print *,802
read(2,*)n;if (n/=101)print *,803
print *,'sngg940q : pass'
end
