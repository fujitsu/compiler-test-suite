module m1
 type :: t1
   integer:: i1
   contains
   procedure:: asn=>prc
   generic:: assignment(=) => asn
 end type

contains
 subroutine   prc(x,y)
  class(t1),intent(inout)::x
  class(t1),intent(in)::y
  x%i1 = y%i1+100
 end subroutine
end

module m2
use m1
 type t2
   integer :: i2
   type(t1),allocatable:: alcmp
 end type
end

subroutine s1
use m2
 type(t2),target :: o1(5),o2(10)
 type(t2),pointer :: p1(:),p2(:)

 p2(::2) = p1

end

 print *,'pass'
end
