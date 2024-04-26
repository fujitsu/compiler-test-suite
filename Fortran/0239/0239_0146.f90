module m1
 type x
   integer::x1
   contains
     final::f
  end type
  contains
   subroutine f(d)
     type(x)::d(2,*)
    print *,1001
   end subroutine
end
use m1
class(x),allocatable::a(:,:,:)
allocate(a(2,3,1))
a%x1=1
deallocate(a)
print *,'pass'
end
