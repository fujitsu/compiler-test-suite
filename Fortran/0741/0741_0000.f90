type z
  integer,allocatable,dimension(:)::za
end type
type (z)::a(2),b(2)

a(1)=z((/1/))
a(2)=z((/2/))
 b=a
forall (i=1:2:1)
  b(i)=a(i)
end forall

  if (.not.allocated(a(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(2)%za)) write(6,*) "NG"
  if (any(a(1)%za/=(/1/))) write(6,*) "NG"
  if (any(a(2)%za/=(/2/))) write(6,*) "NG"
  deallocate(a(1)%za,a(2)%za) 
  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (.not.allocated(b(2)%za)) write(6,*) "NG"
  if (any(b(1)%za/=(/1/))) write(6,*) "NG"
  if (any(b(2)%za/=(/2/))) write(6,*) "NG"

 print *,'pass'
end
