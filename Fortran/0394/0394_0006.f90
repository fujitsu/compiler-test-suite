module  x

   type x1
     integer :: n1
   end type
   type x2
     integer :: n2=1
   end type
   type xx
     type (x1), pointer :: y1=>null()
     type (x2), pointer :: y2
   end type
   type (xx),pointer:: a(:)
contains
  subroutine ss
   type (xx),pointer:: z(:)
   allocate(z(2))
   allocate(z(2)%y2)
   if (z(2)%y2%n2/=1) print *,1001
  end subroutine
end
use x
call ss
print *,'pass'
end
