call sub()
print *,'pass'
contains

  subroutine sub()
  type z
    integer(4),allocatable:: za(:)
    character(3),allocatable:: zc(:)
  end type
  type y
    type(z),allocatable :: yy(:)
  end type
  type(y),allocatable :: a(:)
  integer(2)::i1(2),i2(3)
  allocate(a(3))
  forall (j=1:2:1)
    i1=(/1,2/)
    i2=(/2,3,4/)
  forall (i=1:3:1,i/=0)
    a(i)=y((/ (/z(i1,(/'ABC','DEF'/)),z(i2,(/'abc','def'/))/) /))
  endforall
  endforall

  if (.not.allocated(a(1)%yy(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(1)%yy(2)%za)) write(6,*) "NG"
  if (.not.allocated(a(1)%yy(1)%zc)) write(6,*) "NG"
  if (.not.allocated(a(1)%yy(2)%zc)) write(6,*) "NG"
  if (.not.allocated(a(2)%yy(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(2)%yy(2)%za)) write(6,*) "NG"
  if (.not.allocated(a(2)%yy(1)%zc)) write(6,*) "NG"
  if (.not.allocated(a(2)%yy(2)%zc)) write(6,*) "NG"
  if (.not.allocated(a(3)%yy(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(3)%yy(2)%za)) write(6,*) "NG"
  if (.not.allocated(a(3)%yy(1)%zc)) write(6,*) "NG"
  if (.not.allocated(a(3)%yy(2)%zc)) write(6,*) "NG"
  if (size(a(1)%yy(1)%za)/=2) write(6,*) "NG"
  if (size(a(1)%yy(2)%za)/=3) write(6,*) "NG"
  if (size(a(1)%yy(1)%zc)/=2) write(6,*) "NG"
  if (size(a(1)%yy(2)%zc)/=2) write(6,*) "NG"
  if (size(a(2)%yy(1)%za)/=2) write(6,*) "NG"
  if (size(a(2)%yy(2)%za)/=3) write(6,*) "NG"
  if (size(a(2)%yy(1)%zc)/=2) write(6,*) "NG"
  if (size(a(2)%yy(2)%zc)/=2) write(6,*) "NG"
  if (size(a(3)%yy(1)%za)/=2) write(6,*) "NG"
  if (size(a(3)%yy(2)%za)/=3) write(6,*) "NG"
  if (size(a(3)%yy(1)%zc)/=2) write(6,*) "NG"
  if (size(a(3)%yy(2)%zc)/=2) write(6,*) "NG"
  if (any(a(1)%yy(1)%za/=(/1,2/))) write(6,*) "NG"
  if (any(a(1)%yy(2)%za/=(/2,3,4/))) write(6,*) "NG"
  if (any(a(1)%yy(1)%zc/=(/'ABC','DEF'/))) write(6,*) "NG"
  if (any(a(1)%yy(2)%zc/=(/'abc','def'/))) write(6,*) "NG"
  if (any(a(2)%yy(1)%za/=(/1,2/))) write(6,*) "NG"
  if (any(a(2)%yy(2)%za/=(/2,3,4/))) write(6,*) "NG"
  if (any(a(2)%yy(1)%zc/=(/'ABC','DEF'/))) write(6,*) "NG"
  if (any(a(2)%yy(2)%zc/=(/'abc','def'/))) write(6,*) "NG"
  if (any(a(3)%yy(1)%za/=(/1,2/))) write(6,*) "NG"
  if (any(a(3)%yy(2)%za/=(/2,3,4/))) write(6,*) "NG"
  if (any(a(3)%yy(1)%zc/=(/'ABC','DEF'/))) write(6,*) "NG"
  if (any(a(3)%yy(2)%zc/=(/'abc','def'/))) write(6,*) "NG"
  end subroutine

end