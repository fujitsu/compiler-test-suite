module m1
integer,parameter:: k1=3
type x
integer:: a(k1)
end type
interface operator(+)
  procedure plus
end interface
interface 
  pure subroutine subcheck3
  end subroutine
end interface
contains
 pure function plus(x1,x2) result(r)
   type(x)::r
   type(x),intent(in)::x1
   integer,intent(in)::x2(k1)
   r%a=x1%a+x2
 end function
end
use m1
print *,'pass'
end

  pure subroutine subcheck3
  end subroutine
