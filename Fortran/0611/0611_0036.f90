module m1
 type :: t1
   integer:: i1
   contains
   procedure:: asn=>prc
   generic:: assignment(=) => asn
 end type

 contains
 subroutine   prc(x,y)
  class(t1),intent(out)::x
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
 type(t2) :: o1,o2

 allocate(o1%alcmp)
 allocate(o2%alcmp)

 o1%alcmp%i1 = 21
 o2%alcmp%i1 = 22

 if(o1%alcmp%i1/=21) print*,101
 o1 = o2

 if(o1%alcmp%i1/=122) print*,102
end


 call s1
 print *,'pass'
end

