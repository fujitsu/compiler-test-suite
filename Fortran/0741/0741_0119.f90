type a
  integer ::a1
  integer,allocatable::a2(:,:)
end type
type (a)::x(2,3),y(2,3)
logical,dimension(2,3)::mask

  mask=reshape((/.true.,.true.,.false.,.true.,.false.,.true./),(/2,3/))

  allocate(y(1,1)%a2(2:3,0:2))
  allocate(y(2,1)%a2(2:3,0:2))
  allocate(y(1,2)%a2(2:3,0:2))
  allocate(y(2,2)%a2(2:3,0:2))
  allocate(y(1,3)%a2(2:3,0:2))
  allocate(y(2,3)%a2(2:3,0:2))

  forall (k1=1:1)
    where (mask)
      x=y
    end where
  end forall

  deallocate(y(1,1)%a2)
  deallocate(y(2,1)%a2)
  deallocate(y(1,2)%a2)
  deallocate(y(2,2)%a2)
  deallocate(y(1,3)%a2)
  deallocate(y(2,3)%a2)
  if (.not.allocated(x(1,1)%a2)) write(6,*) "NG"
  if (any(lbound(x(1,1)%a2)/=(/2,0/))) write(6,*) "NG"
  if (any(ubound(x(1,1)%a2)/=(/3,2/))) write(6,*) "NG"
  if (.not.allocated(x(2,1)%a2)) write(6,*) "NG"
  if (any(lbound(x(2,1)%a2)/=(/2,0/))) write(6,*) "NG"
  if (any(ubound(x(2,1)%a2)/=(/3,2/))) write(6,*) "NG"
  if (     allocated(x(1,2)%a2)) write(6,*) "NG"
  if (.not.allocated(x(2,2)%a2)) write(6,*) "NG"
  if (any(lbound(x(2,2)%a2)/=(/2,0/))) write(6,*) "NG"
  if (any(ubound(x(2,2)%a2)/=(/3,2/))) write(6,*) "NG"
  if (     allocated(x(1,3)%a2)) write(6,*) "NG"
  if (.not.allocated(x(2,3)%a2)) write(6,*) "NG"
  if (any(lbound(x(2,3)%a2)/=(/2,0/))) write(6,*) "NG"
  if (any(ubound(x(2,3)%a2)/=(/3,2/))) write(6,*) "NG"

 print *,'pass'
end
