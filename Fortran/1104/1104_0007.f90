module m1
  type x
    integer::x1
    class(*),allocatable::x2
  end type
  type(x),allocatable::var1,var2
  contains
  subroutine s
    allocate(var2, source=var1)
  end
end
use m1
allocate(var1)
allocate(integer::var1%x2)
call s
print *,'sngg563p : pass'
end


