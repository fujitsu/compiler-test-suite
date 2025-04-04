module mod
  type z
    integer(4),allocatable:: za(:)
  end type
  type y
    type(z),allocatable:: yy(:)
  end type
  integer,parameter::n1=1,n2=2,n3=1
  logical(1),parameter::lo(2,2)=reshape((/.true.,.false., &
                                          .false.,.true./),(/2,2/))
end module

program main
  call sub()
  print *,'pass'
 contains

  subroutine sub()
   use mod
   type(y),allocatable::a(:)

    allocate(a(2))

    forall (j=n1:n2:n3)
      where(lo(:,j))
        a(:)=y((/ (z((/j,j+1/)),i=1,j+1) /))
      endwhere
    endforall

    if (.not.allocated(a(1)%yy)) write(6,*) "NG"
    if (.not.allocated(a(2)%yy)) write(6,*) "NG"
    if (size(a(1)%yy)/=2) write(6,*) "NG"
    if (size(a(2)%yy)/=3) write(6,*) "NG"
    if (.not.allocated(a(1)%yy(1)%za)) write(6,*) "NG"
    if (.not.allocated(a(1)%yy(2)%za)) write(6,*) "NG"
    if (.not.allocated(a(2)%yy(1)%za)) write(6,*) "NG"
    if (.not.allocated(a(2)%yy(2)%za)) write(6,*) "NG"
    if (.not.allocated(a(2)%yy(3)%za)) write(6,*) "NG"
    if (any(a(1)%yy(1)%za/=(/1,2/))) write(6,*) "NG"
    if (any(a(1)%yy(2)%za/=(/1,2/))) write(6,*) "NG"
    if (any(a(2)%yy(1)%za/=(/2,3/))) write(6,*) "NG"
    if (any(a(2)%yy(2)%za/=(/2,3/))) write(6,*) "NG"
    if (any(a(2)%yy(3)%za/=(/2,3/))) write(6,*) "NG"
  end subroutine

end
