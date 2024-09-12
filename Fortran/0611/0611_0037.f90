module m1
 type :: t1
   integer:: i1
   contains
   procedure:: asn=>prc
   generic:: assignment(=) => asn
 end type

 contains
 elemental subroutine   prc(x,y)
  class(t1),intent(inout)::x
  class(t1),intent(in)::y
  x%i1 = y%i1+100
 end subroutine
end

module m2
use m1
 type t3
   integer :: i3=3
   type(t1),allocatable:: alcmp2(:)
   contains
   procedure:: asn2=>prc2
   generic:: assignment(=) => asn2
 end type

 contains
 subroutine   prc2(x,y)
  class(t3),intent(inout)::x
  class(t3),intent(in)::y
  x%i3 = y%i3*2
  x%alcmp2 = y%alcmp2
 end subroutine
end
 
subroutine s1
use m2
 type(t3) :: o2,o3

 allocate(o2%alcmp2(4))
 allocate(o3%alcmp2(4))

 o2%i3 = 2
 o3%i3 = 3

 o2%alcmp2%i1 = 21
 o3%alcmp2%i1 = 22

 o3 = o2

 if(all(o3%alcmp2%i1 /= 121)) print*,101
 if(o3%i3 /= 4) print*,102
 
end


 call s1
 print *,'pass'
end

