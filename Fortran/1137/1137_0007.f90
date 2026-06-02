module m1
  type t1
     class(*), allocatable :: data(:)
  end type t1
  type, extends(t1) :: t2
     class(*), allocatable :: data2(:)
  end type t2
contains
  logical function foo(a, b)
    type (t1), target, intent(in) :: a
    type (t2), target, intent(in) :: b
    foo=.false.
    select type (na=>a%data)
    type is (integer(4))
       select type (nb=>b%data2)
       type is (integer(4))
          foo = all(na == nb)
       end select
    end select
  end function foo
end module m1
use m1
    type (t1), target :: a
    type (t2), target :: b
allocate( a%data(2),source=[1,2])
allocate( b%data2(2),source=[1,2])
if (.not.foo(a,b)) print *,2001
print *,'sngg631j : pass'
end


