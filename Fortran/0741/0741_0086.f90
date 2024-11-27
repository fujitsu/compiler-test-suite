module mod
  type z
    integer(4),allocatable:: za(:)
  end type
  type y
    type(z),allocatable:: yy(:)
  end type
  integer,parameter::n1=1,n2=2,n3=1
end module

program main
  call sub()
  print *,'pass'
 contains

  subroutine sub()
   use mod
   type(y),allocatable::a(:)
   logical(1),parameter::lo(2)=(/.true.,.true./)

    allocate(a(2))

    kk=1
    forall(j=n1:n2:n3)
      kk=kk+j
      where(lo(:))
        a(:)=y((/ (z((/kk,kk+1/)),i=1,3) /))
      endwhere
    endforall

    if (.not.allocated(a(1)%yy(1)%za)) write(6,*) "NG"
    if (.not.allocated(a(1)%yy(2)%za)) write(6,*) "NG"
    if (.not.allocated(a(1)%yy(3)%za)) write(6,*) "NG"
    if (.not.allocated(a(2)%yy(1)%za)) write(6,*) "NG"
    if (.not.allocated(a(2)%yy(2)%za)) write(6,*) "NG"
    if (.not.allocated(a(2)%yy(3)%za)) write(6,*) "NG"
    if (any(a(1)%yy(1)%za/=(/3,4/))) write(6,*) "NG"
    if (any(a(1)%yy(2)%za/=(/3,4/))) write(6,*) "NG"
    if (any(a(1)%yy(3)%za/=(/3,4/))) write(6,*) "NG"
    if (any(a(2)%yy(1)%za/=(/3,4/))) write(6,*) "NG"
    if (any(a(2)%yy(2)%za/=(/3,4/))) write(6,*) "NG"
    if (any(a(2)%yy(3)%za/=(/3,4/))) write(6,*) "NG"
  end subroutine

end
