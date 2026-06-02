module m1
  type x
    integer::x1
  end type
  type y
    class(x),allocatable::y1
  end type
  type z
    type(y),allocatable::z1
  end type
  type w
    type(y)            ::w1
  end type
  type q
    type(y),pointer    ::q1
  end type
  type r
    class(*),allocatable::r1
  end type
  type s
    class(y),pointer    ::s1
  end type
end
use m1
print *,'sngg733p : pass'
end
