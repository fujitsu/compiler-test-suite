  type x
    procedure(),pointer,nopass::p1
  end type
  type y
    type(x)::y1
  end type
type (y)::v1
 v1%y1= x(ss1)
call v1%y1%p1(k)
 if (k/=1) print *,20021
print *,'pass'
  contains
   subroutine ss1(k)
   k=1
   end subroutine
end
