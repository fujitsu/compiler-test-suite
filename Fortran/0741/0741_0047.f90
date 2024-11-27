type z
  integer,allocatable,dimension(:)::za
end type
type (z)::a(3)

allocate(a(1)%za(2:2),a(2)%za(3:4),a(3)%za(5:7))
a(1)%za=(/1/)
a(2)%za=(/2,3/)
a(3)%za=(/4,5,6/)
forall (i=1:2:1)
  a(i+1)=a(i)
end forall

  if (.not.allocated(a(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(2)%za)) write(6,*) "NG"
  if (.not.allocated(a(3)%za)) write(6,*) "NG"
  if (any(a(1)%za/=(/1/))) write(6,*) "NG"
  if (any(a(2)%za/=(/1/))) write(6,*) "NG"
  if (any(a(3)%za/=(/2,3/))) write(6,*) "NG"
  if (any(lbound(a(1)%za)/=(/2/))) write(6,*) "NG"
  if (any(ubound(a(1)%za)/=(/2/))) write(6,*) "NG"
  if (any(lbound(a(2)%za)/=(/2/))) write(6,*) "NG"
  if (any(ubound(a(2)%za)/=(/2/))) write(6,*) "NG"
  if (any(lbound(a(3)%za)/=(/3/))) write(6,*) "NG"
  if (any(ubound(a(3)%za)/=(/4/))) write(6,*) "NG"

 print *,'pass'
end
