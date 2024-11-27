call sub()
print *,'pass'
contains

  subroutine sub()
  type z
    integer(4),allocatable:: za(:)
  end type
  type y
    type(z) :: yy(1:2)
  end type
  type(y) :: a(3)

  forall (i=1:3:1,i/=2)
    a(i)=y((/(z((/1,2/))),(z((/2,3,4/)))/))
  endforall

  if (.not.allocated(a(1)%yy(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(1)%yy(2)%za)) write(6,*) "NG"
  if (.not.allocated(a(3)%yy(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(3)%yy(2)%za)) write(6,*) "NG"
  if (size(a(1)%yy(1)%za)/=2) write(6,*) "NG"
  if (size(a(1)%yy(2)%za)/=3) write(6,*) "NG"
  if (size(a(3)%yy(1)%za)/=2) write(6,*) "NG"
  if (size(a(3)%yy(2)%za)/=3) write(6,*) "NG"
  if (any(a(1)%yy(1)%za/=(/1,2/))) write(6,*) "NG"
  if (any(a(1)%yy(2)%za/=(/2,3,4/))) write(6,*) "NG"
  if (any(a(3)%yy(1)%za/=(/1,2/))) write(6,*) "NG"
  if (any(a(3)%yy(2)%za/=(/2,3,4/))) write(6,*) "NG"
  end subroutine

end
