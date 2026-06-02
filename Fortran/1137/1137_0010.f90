module m1
   type bt
     integer::x1
   end type
   type,extends(bt)::et
     integer::x2
   end type
contains
  integer function foo(a)
    class(bt), intent(in) :: a
    select type (a)
    class is (bt)
       select type (a)
       type is (et)
          foo=a%x1+a%x2
       end select
    end select
  end function foo
end module m1
use m1
class (bt),allocatable::v
allocate(v,source=et(1,2))
kk= foo(v)
if (kk/=3) print *,1010
print *,'sngg634j : pass'
end


