module m1
integer(8),parameter::n=4
  type r
    integer(8)::d=1
  end  type
  type z
    integer::x01
    class(r),allocatable::x1(:)
  end type
contains
   subroutine s1(a)
   class(z),intent(out)::a
   k=0
   select type(p=>a%x1)
     type is(r)
      k=1
   end select
   if (k/=1) print *,711
   allocate ( r:: a%x1(n))
   end subroutine
end
use m1
   type(z)::a
  call s1(a)
print *,'pass'
end
