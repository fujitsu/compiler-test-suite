type z
  integer,allocatable,dimension(:)::za
end type
type (z)::a(3),b(3)

  allocate(a(1)%za(2:2),a(2)%za(3:4),a(3)%za(5:7))
  a(1)%za=(/1/)
  a(2)%za=(/2,3/)
  a(3)%za=(/4,5,6/)
  forall (i=1:2:1)
    b(i+1)=a(i)
  end forall

  if (     allocated(b(1)%za)) write(6,*) "NG"
  if (.not.allocated(b(2)%za)) write(6,*) "NG"
  if (.not.allocated(b(3)%za)) write(6,*) "NG"
  if (any(b(2)%za/=(/1/))) write(6,*) "NG"
  if (any(b(3)%za/=(/2,3/))) write(6,*) "NG"
  if (any(lbound(b(2)%za)/=(/2/))) write(6,*) "NG"
  if (any(ubound(b(2)%za)/=(/2/))) write(6,*) "NG"
  if (any(lbound(b(3)%za)/=(/3/))) write(6,*) "NG"
  if (any(ubound(b(3)%za)/=(/4/))) write(6,*) "NG"

 print *,'pass'
end
