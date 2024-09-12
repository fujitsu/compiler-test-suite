 module m1
  type:: t1
    integer:: i1=1
    contains
    procedure:: tasn=>prc
    generic:: assignment(=) => tasn
  end type

  contains
  subroutine   prc(x,y)
   class(t1),intent(inout)::x
   class(t1),intent(in)::y
   x%i1 = (y%i1+10)*2
  end subroutine
end
module m2
use m1
 type t2
   integer:: i2=2
   class(t1),allocatable:: a2
 end type
 type t3
   integer:: i3=3
   type(t2):: aa3(3)
 end type
end
 
subroutine s1
use m2
type(t3):: obj1(4),obj2(2)
 
 do i=1,3
  allocate(obj1(1)%aa3(i)%a2)
  allocate(obj1(3)%aa3(i)%a2)
  obj1(1)%aa3(i)%a2%i1 = 22
  obj1(3)%aa3(i)%a2%i1 = 23
 end do

 obj2 = obj1(::2)

 if(obj2(1)%aa3(1)%a2%i1/=64) print*,101,obj2(1)%aa3(1)%a2%i1
 if(obj2(2)%aa3(1)%a2%i1/=66) print*,101,obj2(2)%aa3(1)%a2%i1
end


 call s1
 print *,'pass'
 end

