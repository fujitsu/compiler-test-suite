module mod
  type z
    integer(4),allocatable:: za(:)
  end type
  type y
    type(z) :: yy(1:2)
  end type
end module

program main
  call sub()
  print *,'pass'
 contains

  subroutine sub()
   use mod
   type(y)::a(2)

    where((/.true.,.true./))
      a(:)=y((/ (z((/1,2/))),(z((/3,4/))) /))
    endwhere

    if (.not.allocated(a(1)%yy(1)%za)) write(6,*) "NG"
    if (.not.allocated(a(1)%yy(2)%za)) write(6,*) "NG"
    if (.not.allocated(a(2)%yy(1)%za)) write(6,*) "NG"
    if (.not.allocated(a(2)%yy(2)%za)) write(6,*) "NG"
    if (any(a(1)%yy(1)%za/=(/1,2/))) write(6,*) "NG"
    if (any(a(1)%yy(2)%za/=(/3,4/))) write(6,*) "NG"
    if (any(a(2)%yy(1)%za/=(/1,2/))) write(6,*) "NG"
    if (any(a(2)%yy(2)%za/=(/3,4/))) write(6,*) "NG"
  end subroutine

end
