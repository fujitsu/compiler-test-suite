type z
  integer,allocatable,dimension(:)::za
end type
type (z),allocatable::a(:)
type (z)::b(4)

  allocate(a(4))
  allocate(a(1)%za(2:2),a(2)%za(3:3),a(3)%za(4:4),a(4)%za(5:5))
  forall (k=1:1:1)
  forall (i=1:4:1)
    a(i)=z((/(/(j,j=1,i,2)/)/))
  endforall
  endforall

  if (.not.allocated(a(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(2)%za)) write(6,*) "NG"
  if (.not.allocated(a(3)%za)) write(6,*) "NG"
  if (.not.allocated(a(4)%za)) write(6,*) "NG"
  if (any(a(1)%za/=(/1/))) write(6,*) "NG"
  if (any(a(2)%za/=(/1/))) write(6,*) "NG"
  if (any(a(3)%za/=(/1,3/))) write(6,*) "NG"
  if (any(a(4)%za/=(/1,3/))) write(6,*) "NG"
  if (any(lbound(a(1)%za)/=(/1/))) write(6,*) "NG"
  if (any(ubound(a(1)%za)/=(/1/))) write(6,*) "NG"
  if (any(lbound(a(2)%za)/=(/1/))) write(6,*) "NG"
  if (any(ubound(a(2)%za)/=(/1/))) write(6,*) "NG"
  if (any(lbound(a(3)%za)/=(/1/))) write(6,*) "NG"
  if (any(ubound(a(3)%za)/=(/2/))) write(6,*) "NG"
  if (any(lbound(a(4)%za)/=(/1/))) write(6,*) "NG"
  if (any(ubound(a(4)%za)/=(/2/))) write(6,*) "NG"

  forall (i=1:4:1)
  forall (j=1:4:1)
    b(i)=a(5-i)
  end forall
  end forall

  deallocate(a(1)%za,a(2)%za,a(3)%za,a(4)%za)
  deallocate(a)

  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (.not.allocated(b(2)%za)) write(6,*) "NG"
  if (.not.allocated(b(3)%za)) write(6,*) "NG"
  if (.not.allocated(b(4)%za)) write(6,*) "NG"
  if (any(b(1)%za/=(/1,3/))) write(6,*) "NG"
  if (any(b(2)%za/=(/1,3/))) write(6,*) "NG"
  if (any(b(3)%za/=(/1/))) write(6,*) "NG"
  if (any(b(4)%za/=(/1/))) write(6,*) "NG"
  if (any(lbound(b(1)%za)/=(/1/))) write(6,*) "NG"
  if (any(ubound(b(1)%za)/=(/2/))) write(6,*) "NG"
  if (any(lbound(b(2)%za)/=(/1/))) write(6,*) "NG"
  if (any(ubound(b(2)%za)/=(/2/))) write(6,*) "NG"
  if (any(lbound(b(3)%za)/=(/1/))) write(6,*) "NG"
  if (any(ubound(b(3)%za)/=(/1/))) write(6,*) "NG"
  if (any(lbound(b(4)%za)/=(/1/))) write(6,*) "NG"
  if (any(ubound(b(4)%za)/=(/1/))) write(6,*) "NG"
  deallocate(b(1)%za,b(2)%za,b(3)%za,b(4)%za)

 print *,'pass'
end
