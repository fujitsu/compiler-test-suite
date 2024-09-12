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
 type(t2),allocatable :: p1(:),p2(:)

 do i=1,5
  allocate(o1(i)%alcmp)
  allocate(o2(i)%alcmp)
  allocate(o2(i+5)%alcmp)

  o1(i)%alcmp%i1 = 21
  o2(i)%alcmp%i1 = 23
 end do

 allocate(p1,source = o1)
 allocate(p2,source = o2)

 p2(::2) = p1

 do i=1,10,2
  if(p2(i)%alcmp%i1/=121) print*,102,' ',i,' ',p2(i)%alcmp%i1
 end do
end

 call s1
 print *,'pass'
end
