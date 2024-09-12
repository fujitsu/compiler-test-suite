module m1
  type x
    integer::x0=1
    integer,allocatable::x1(:)
  end type
contains
   subroutine s(a)
   type(x),intent(inout)::a
   type(x)              ::temp
   a=temp
   if (a%x0/=1) print *,201
   allocate ( a%x1(10) )
   if (a%x0/=1) print *,202
  end subroutine
end
use m1
   type(x)::b
  allocate ( b%x1(10) )
  call s(b)
print *,'pass'
end

