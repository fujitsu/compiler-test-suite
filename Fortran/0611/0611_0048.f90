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
  subroutine   prc_t0(x,y)
   class(t0),intent(out)::x
   class(t0),intent(in)::y
   x%i0 = y%i0+10
  end subroutine
end
module m2
use m1
 type t2
   integer:: i2=2
   class(t1),allocatable:: a2(:)
   type(t1) :: aa2(3)
 end type
end
 
subroutine s1
use m2
type(t2):: obj1,obj2
 
 allocate(obj1%a2(3))
 allocate(obj2%a2(3))

 obj1%a2%i1 = 22
 obj2%a2%i1 = 23

 obj1 = obj2

 if(all(obj1%a2%i0/=20)) print*,101
 if(all(obj1%a2%i1/=23)) print*,102,obj1%a2%i1
 if(all(obj1%aa2%i0/=20)) print*,103
 if(all(obj1%aa2%i1/=1)) print*,104

end


 call s1
 print *,'pass'
 end

