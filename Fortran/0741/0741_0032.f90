type z
  integer,allocatable,dimension(:)::za
end type
type (z)::a(4),b(4)

  allocate(a(1)%za(2:2),a(2)%za(3:4),a(3)%za(5:7),a(4)%za(8:11))
  a(1)%za=(/1/)
  a(2)%za=(/2,3/)
  a(3)%za=(/4,5,6/)
  a(4)%za=(/7,8,9,10/)
  allocate(b(1)%za(10:10),b(3)%za(10:10))
  b(1)%za=(/10/)
  b(3)%za=(/30/)
  forall (i=1:4:2)
  forall (j=1:4:1)
    b(i+1)=a(i)
  end forall
  end forall

  deallocate(a(1)%za,a(2)%za,a(3)%za)

  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (.not.allocated(b(2)%za)) write(6,*) "NG"
  if (.not.allocated(b(3)%za)) write(6,*) "NG"
  if (.not.allocated(b(4)%za)) write(6,*) "NG"
  if (any(b(1)%za/=(/10/))) write(6,*) "NG"
  if (any(b(2)%za/=(/1/))) write(6,*) "NG"
  if (any(b(3)%za/=(/30/))) write(6,*) "NG"
  if (any(b(4)%za/=(/4,5,6/))) write(6,*) "NG"
  if (any(lbound(b(1)%za)/=(/10/))) write(6,*) "NG"
  if (any(ubound(b(1)%za)/=(/10/))) write(6,*) "NG"
  if (any(lbound(b(2)%za)/=(/2/))) write(6,*) "NG"
  if (any(ubound(b(2)%za)/=(/2/))) write(6,*) "NG"
  if (any(lbound(b(3)%za)/=(/10/))) write(6,*) "NG"
  if (any(ubound(b(3)%za)/=(/10/))) write(6,*) "NG"
  if (any(lbound(b(4)%za)/=(/5/))) write(6,*) "NG"
  if (any(ubound(b(4)%za)/=(/7/))) write(6,*) "NG"

 print *,'pass'
end
