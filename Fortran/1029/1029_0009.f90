type z
  character(3),allocatable::za1(:)
  integer(2),allocatable::za2(:,:)
  complex(16),allocatable::za3(:)
end type
type (z),allocatable::a(:,:,:)
type (z),allocatable::b(:,:,:)
logical(2),allocatable::mask(:,:,:)
integer(1),parameter::n1=2,n2=2,n3=2
integer(2),allocatable::vs1(:),vs2(:)

  allocate(vs1(2),vs2(2))
  vs1=(/1,2/)
  vs2=(/2,1/)
  allocate(mask(n1,n2,n3))
  mask = .true.
  allocate(a(n1,n2,n3))
  allocate(b(n1,n2,n3))

  forall (i=1:n3,j=1:n2,k=n1:1:-1)
    where(mask(k,vs1,vs2))
      a(k,vs1,vs2)=z((/'abc'/),reshape((/1,2,3,4/),(/2,2/)), &
                 (/(1.0,2.0),(-1.0,-2.0)/))
    elsewhere
      mask(k,vs1,vs2)=.false.
    end where
  end forall

  do i=1,n3
    do j=1,n2
      do k=1,n1
        if (.not.allocated(a(k,j,i)%za1)) write(6,*) "NG"
        if (any(a(k,j,i)%za1/=(/'abc'/))) write(6,*) "NG"
        if (.not.allocated(a(k,j,i)%za2)) write(6,*) "NG"
        if (any(a(k,j,i)%za2/=reshape((/1,2,3,4/),(/2,2/)))) write(6,*) "NG"
        if (.not.allocated(a(k,j,i)%za3)) write(6,*) "NG"
        if (any(a(k,j,i)%za3/=(/(1.0,2.0),(-1.0,-2.0)/))) write(6,*) "NG"
      enddo
    enddo
  enddo

  mask=reshape((/.true.,.false.,.false.,.true., &
                 .false.,.true.,.true.,.false./),(/2,2,2/))
  mask(1,1,1)=.true.
  mask(2,1,1)=.false.
  mask(1,2,1)=.false.
  mask(2,2,1)=.true.
  mask(1,1,2)=.false.
  mask(2,1,2)=.true.
  mask(1,2,2)=.true.
  mask(2,2,2)=.false.

  forall (k=1:2)
    where(mask(:,:,k))
      b(vs1,:,k)=a(:,:,k)
    end where
  end forall

  do i=1,n3
    do j=1,n3
      do k=1,n3
        deallocate(a(k,j,i)%za1)
        deallocate(a(k,j,i)%za2)
        deallocate(a(k,j,i)%za3)
      enddo
    enddo
  enddo
  deallocate(a)

  if (     allocated(b(2,1,1)%za1)) write(6,*) "NG"
  if (     allocated(b(2,1,1)%za2)) write(6,*) "NG"
  if (     allocated(b(2,1,1)%za3)) write(6,*) "NG"
  if (     allocated(b(1,2,1)%za1)) write(6,*) "NG"
  if (     allocated(b(1,2,1)%za2)) write(6,*) "NG"
  if (     allocated(b(1,2,1)%za3)) write(6,*) "NG"
  if (     allocated(b(1,1,2)%za1)) write(6,*) "NG"
  if (     allocated(b(1,1,2)%za2)) write(6,*) "NG"
  if (     allocated(b(1,1,2)%za3)) write(6,*) "NG"
  if (     allocated(b(2,2,2)%za1)) write(6,*) "NG"
  if (     allocated(b(2,2,2)%za2)) write(6,*) "NG"
  if (     allocated(b(2,2,2)%za3)) write(6,*) "NG"
  if (.not.allocated(b(1,1,1)%za1)) write(6,*) "NG"
  if (.not.allocated(b(1,1,1)%za2)) write(6,*) "NG"
  if (.not.allocated(b(1,1,1)%za3)) write(6,*) "NG"
  if (any(b(1,1,1)%za1/=(/'abc'/))) write(6,*) "NG"
  if (any(b(1,1,1)%za2/=reshape((/1,2,3,4/),(/2,2/)))) write(6,*) "NG"
  if (any(b(1,1,1)%za3/=(/(1.0,2.0),(-1.0,-2.0)/))) write(6,*) "NG"
  if (.not.allocated(b(2,2,1)%za1)) write(6,*) "NG"
  if (.not.allocated(b(2,2,1)%za2)) write(6,*) "NG"
  if (.not.allocated(b(2,2,1)%za3)) write(6,*) "NG"
  if (any(b(2,2,1)%za1/=(/'abc'/))) write(6,*) "NG"
  if (any(b(2,2,1)%za2/=reshape((/1,2,3,4/),(/2,2/)))) write(6,*) "NG"
  if (any(b(2,2,1)%za3/=(/(1.0,2.0),(-1.0,-2.0)/))) write(6,*) "NG"
  if (.not.allocated(b(2,1,2)%za1)) write(6,*) "NG"
  if (.not.allocated(b(2,1,2)%za2)) write(6,*) "NG"
  if (.not.allocated(b(2,1,2)%za3)) write(6,*) "NG"
  if (any(b(2,1,2)%za1/=(/'abc'/))) write(6,*) "NG"
  if (any(b(2,1,2)%za2/=reshape((/1,2,3,4/),(/2,2/)))) write(6,*) "NG"
  if (any(b(2,1,2)%za3/=(/(1.0,2.0),(-1.0,-2.0)/))) write(6,*) "NG"
  if (.not.allocated(b(1,2,2)%za1)) write(6,*) "NG"
  if (.not.allocated(b(1,2,2)%za2)) write(6,*) "NG"
  if (.not.allocated(b(1,2,2)%za3)) write(6,*) "NG"
  if (any(b(1,2,2)%za1/=(/'abc'/))) write(6,*) "NG"
  if (any(b(1,2,2)%za2/=reshape((/1,2,3,4/),(/2,2/)))) write(6,*) "NG"
  if (any(b(1,2,2)%za3/=(/(1.0,2.0),(-1.0,-2.0)/))) write(6,*) "NG"

 print *,'pass'
end
