type z
  integer,allocatable,dimension(:)::za
end type
type (z)::a(2),b(2)

allocate(a(1)%za(2:2),a(2)%za(3:4))
a(1)%za=(/1/)
a(2)%za=(/2,3/)
forall (i=1:2:1)
  b(i)=a(3-i)
end forall

  if (.not.allocated(a(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(2)%za)) write(6,*) "NG"
  if (any(a(1)%za/=(/1/))) write(6,*) "NG"
  if (any(a(2)%za/=(/2,3/))) write(6,*) "NG"
  if (any(lbound(a(1)%za)/=(/2/))) write(6,*) "NG"
  if (any(ubound(a(1)%za)/=(/2/))) write(6,*) "NG"
  if (any(lbound(a(2)%za)/=(/3/))) write(6,*) "NG"
  if (any(ubound(a(2)%za)/=(/4/))) write(6,*) "NG"
  deallocate(a(1)%za,a(2)%za)
  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (.not.allocated(b(2)%za)) write(6,*) "NG"
  if (any(b(2)%za/=(/1/))) write(6,*) "NG"
  if (any(b(1)%za/=(/2,3/))) write(6,*) "NG"
  if (any(lbound(b(2)%za)/=(/2/))) write(6,*) "NG"
  if (any(ubound(b(2)%za)/=(/2/))) write(6,*) "NG"
  if (any(lbound(b(1)%za)/=(/3/))) write(6,*) "NG"
  if (any(ubound(b(1)%za)/=(/4/))) write(6,*) "NG"

 print *,'pass'
end
