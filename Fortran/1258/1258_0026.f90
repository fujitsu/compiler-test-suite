module m1
  type x
     integer::d=1
  end type
  contains
    subroutine s1(d)
      class(x)::d
      if (d%d/=1) print *,101
    end
    subroutine s2(d)
      class(x),allocatable::d
      if (d%d/=1) print *,102
    end
end
use m1
class(x),allocatable::v
allocate(v)
call s1(v)
call s2(v)
print *,'sngg610t : pass'
end

