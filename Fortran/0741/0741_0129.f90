type z
  character(3),allocatable::za1(:)
  integer(2),allocatable::za2(:,:)
  complex(16),allocatable::za3(:)
end type
type (z),allocatable::a(:,:,:)
type (z),allocatable::b(:,:,:)
logical(2),allocatable::mask(:,:,:)
integer(1),parameter::n1=2,n2=2,n3=2

  allocate(mask(n1,n2,n3))
  mask = .true.
  allocate(a(n1,n2,n3))
  allocate(b(n1,n2,n3))

  forall (i=1:n3,j=1:n2,k=n1:1:-1)
    where(mask(:,:,:))
      a(:,:,:)=z((/'abc'/),reshape((/1,2,3,4/),(/2,2/)), &
                 (/(1.0,2.0),(-1.0,-2.0)/))
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
        if (any(abs(a(k,j,i)%za3-(/(1.0,2.0),(-1.0,-2.0)/)).gt.1.0e-8)) &
           write(6,*) "NG"
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

  forall (i=1:n3,j=1:n2,k=n1:1:-1)
    where(mask(:,:,:))
      b(:,:,:)=a(:,:,:)
    else where
      b(:,:,:)=a(:,:,:)
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

  do i=1,n3
    do j=1,n2
      do k=1,n1
        if (.not.allocated(b(k,j,i)%za1)) write(6,*) "NG"
        if (.not.allocated(b(k,j,i)%za2)) write(6,*) "NG"
        if (.not.allocated(b(k,j,i)%za3)) write(6,*) "NG"
        if (any(b(k,j,i)%za1/=(/'abc'/))) write(6,*) "NG"
        if (any(b(k,j,i)%za2/=reshape((/1,2,3,4/),(/2,2/)))) write(6,*) "NG"
        if (any(abs(b(k,j,i)%za3-(/(1.0,2.0),(-1.0,-2.0)/)).gt.1.0e-8)) &
           write(6,*) "NG"
      enddo
    enddo
  enddo

 print *,'pass'
end