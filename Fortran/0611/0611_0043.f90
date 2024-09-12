 module m1
  type:: t1
    integer:: i1=1
    contains
    procedure:: tasn=>prc
    generic:: assignment(=) => tasn
  end type

  contains
  elemental subroutine   prc(x,y)
   class(t1),intent(inout)::x
   class(t1),intent(in)::y
   x%i1 = (y%i1+10)*2
  end subroutine
end
module m2
use m1
 type t2
   integer:: i2=2
   type(t1),allocatable:: a2(:)
 end type

 type t3
   integer:: i3=3
   type(t2):: aa3
 end type
end
 
subroutine s1
use m2
type(t3):: obj1,obj2

 allocate(obj1%aa3%a2(3))

 obj1%aa3%a2%i1 = 22

 obj2 = obj1

 if(obj2%aa3%a2(1)%i1/=64) print*,101,obj2%aa3%a2(1)%i1
end


 call s1
 print *,'pass'
 end

