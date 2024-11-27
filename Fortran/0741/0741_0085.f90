module mod
  type z
    integer(4),allocatable:: za(:)
  end type
  type y
    type(z),allocatable:: yy(:)
  end type
end module

program main
  call sub(1,2,1)
  print *,'pass'
 contains

  subroutine sub(n1,n2,n3)
   use mod
   type(y),allocatable::a(:)
   logical(1),parameter::lo(2)=(/.true.,.true./)

    allocate(a(2))

    forall(j=n1:n2:n3)
      where(lo(:))
        a(:)=y((/ (z((/1,2/)),i=1,2) /))
      endwhere
    endforall

    if (.not.allocated(a(1)%yy(1)%za)) write(6,*) "NG"
    if (.not.allocated(a(1)%yy(2)%za)) write(6,*) "NG"
    if (.not.allocated(a(2)%yy(1)%za)) write(6,*) "NG"
    if (.not.allocated(a(2)%yy(2)%za)) write(6,*) "NG"
    if (any(a(1)%yy(1)%za/=(/1,2/))) write(6,*) "NG"
    if (any(a(1)%yy(2)%za/=(/1,2/))) write(6,*) "NG"
    if (any(a(2)%yy(1)%za/=(/1,2/))) write(6,*) "NG"
    if (any(a(2)%yy(2)%za/=(/1,2/))) write(6,*) "NG"
  end subroutine

end
