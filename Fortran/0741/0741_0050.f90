type z
  integer,allocatable,dimension(:)::za
end type
type (z)::a(2,2)

  allocate(a(1,1)%za(2:3),a(2,1)%za(3:4))
  allocate(a(1,2)%za(2:3),a(2,2)%za(3:4))
  a(1,1)%za=(/1,1/)
  a(2,1)%za=(/2,1/)
  a(1,2)%za=(/1,2/)
  a(2,2)%za=(/2,2/)

  forall (j=1:2:1)
    forall (i=1:2:1)
      a(i,j)=a(3-i,j)
    end forall
  end forall

  if (.not.allocated(a(1,1)%za)) write(6,*) "NG"
  if (.not.allocated(a(2,1)%za)) write(6,*) "NG"
  if (.not.allocated(a(1,2)%za)) write(6,*) "NG"
  if (.not.allocated(a(2,2)%za)) write(6,*) "NG"
  if (any(a(1,1)%za/=(/2,1/))) write(6,*) "NG"
  if (any(a(2,1)%za/=(/1,1/))) write(6,*) "NG"
  if (any(a(1,2)%za/=(/2,2/))) write(6,*) "NG"
  if (any(a(2,2)%za/=(/1,2/))) write(6,*) "NG"
  if (any(lbound(a(1,1)%za)/=(/3/))) write(6,*) "NG"
  if (any(lbound(a(2,1)%za)/=(/2/))) write(6,*) "NG"
  if (any(lbound(a(1,2)%za)/=(/3/))) write(6,*) "NG"
  if (any(lbound(a(2,2)%za)/=(/2/))) write(6,*) "NG"
  if (any(ubound(a(1,1)%za)/=(/4/))) write(6,*) "NG"
  if (any(ubound(a(2,1)%za)/=(/3/))) write(6,*) "NG"
  if (any(ubound(a(1,2)%za)/=(/4/))) write(6,*) "NG"
  if (any(ubound(a(2,2)%za)/=(/3/))) write(6,*) "NG"

 print *,'pass'
end
