module Type_Definition
  type, public :: der_type
     real    :: x
     integer :: i
  end type der_type
end module Type_Definition
program main
use Type_Definition
type (der_type), dimension(0:4), target  :: typ
integer        , dimension(:)  , pointer :: pt_1
typ%i  =  45
typ%x  =  3.0
pt_1   => typ%i
write(62,*) lbound(typ%i),ubound(typ%i)
write(62,*) lbound(pt_1),ubound(pt_1)
rewind 62
read(62,*) ii,jj;if (any((/ii,jj/)/=(/1,5/)))print *,'error-1'
read(62,*) ii,jj;if (any((/ii,jj/)/=(/1,5/)))print *,'error-2'
print *,'pass'
end program main
