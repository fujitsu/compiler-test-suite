module m1
  type t1
     class(*), allocatable :: data(:)
  end type t1
  type t2
     class(*), allocatable :: data(:)
  end type t2
contains
  logical function foo(a, b)
    type (t1), target, intent(in) :: a
    type (t2), target, intent(in) :: b
    select type (na=>a%data)
    type is (integer(4))
       select type (nb=>b%data)
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
allocate( b%data(2),source=[1,2])
if (.not.foo(a,b)) print *,2001
print *,'sngg632j : pass'
end


