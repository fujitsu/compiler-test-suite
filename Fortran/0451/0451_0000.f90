module m1
  type x
    integer::x0=1
    integer,allocatable::x1(:)
  end type
contains
   subroutine s(a)
   type(x),intent(out)::a
   allocate ( a%x1(10) )
  end subroutine
end
use m1
   type(x)::a
  allocate ( a%x1(10) )
  call s(a)
print *,'pass'
end
