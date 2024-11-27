module mod
  implicit none

  type new
    real, pointer :: data(:)
    logical :: temporary
  end type new

  interface assignment(=)
     module procedure assign
  end interface

contains

  subroutine assign (x,y)
    type(new),intent(out) :: x
    type(new),intent(in)  :: y
    x%temporary = .false.
    if(y%temporary)then
      x%data => y%data
    else
      allocate( x%data(size(y%data)) )
      x%data = y%data
    end if
  end subroutine assign

end module mod
use mod
type(new) ::a,b
b%temporary = .false.
allocate(b%data(2));b%data=(/1.,2./)
a=b
if (associated(a%data,b%data))print *,'error-1'
b%temporary = .not.b%temporary
a=b
if (.not.associated(a%data,b%data))print *,'error-1'
print *,'pass'
end
