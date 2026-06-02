module m1
  type base
    integer::x1=1
    contains
     procedure::bp
     generic::gen=>bp
  end type
  contains
    subroutine bp(d)
     class(base)::d
     write(1,*)101
    end subroutine
end
module m2
 use m1
 type,extends(base)::ext
   integer::x2=2
    contains
     procedure::ep
     generic::gen=>ep
 end type
 class(base),allocatable::v
 private
 public::v,set
contains
    subroutine ep(d,k)
     class(ext )::d
     print *,'ep'
    end subroutine
    subroutine set(d)
     class(base),allocatable::d
     allocate(base::v)
    end subroutine
end
use m2
     write(1,*)100
call set(v)
call v%gen()
rewind 1
read(1,*)n;if (n/=100)print *,802
read(1,*)n;if (n/=101)print *,803
print *,'sngg939q : pass'
end
