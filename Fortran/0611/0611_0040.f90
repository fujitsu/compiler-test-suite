 module m1
  type t0
    integer:: i0=10
    contains
    procedure:: t0asn=>prc_t0
    generic:: assignment(=) => t0asn
  end type

  type,extends(t0):: t1
    integer:: i1=1
  end type

  contains
  elemental subroutine   prc_t0(x,y)
   class(t0),intent(inout)::x
   class(t0),intent(in)::y
   x%i0 = (y%i0+10)*2
  end subroutine
end
module m2
use m1
 type t2
   integer:: i2=2
   type(t1),allocatable:: a2(:)
   type(t1) :: aa2(3)
 end type
end
 
subroutine s1
use m2
type(t2):: obj1(4),obj2(2)
 
 allocate(obj1(2)%a2(3))
 allocate(obj2(2)%a2(3))
 allocate(obj1(1)%a2(3))
 allocate(obj2(1)%a2(3))

 obj1(2)%a2%i1 = 22
 obj2(2)%a2%i1 = 23

 obj1(1:2) = obj2

 if(all(obj1(2)%a2%i0/=40)) print*,101
 if(all(obj1(2)%a2%i1/=1)) print*,102
 if(all(obj1(2)%aa2%i0/=40)) print*,103
 if(all(obj1(2)%aa2%i1/=1)) print*,104
end


 call s1
 print *,'pass'
 end

