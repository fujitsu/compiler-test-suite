type z
  integer(4),allocatable::za2(:,:)
end type
type (z)::a(2,2,2)
type (z)::b(2,2,2)
logical::mask(2,2,2)
integer,parameter::n1=2,n2=2,n3=2
integer::vs1(2),vs2(2)

  vs1=(/1,2/)
  vs2=(/2,1/)
  mask = .false.

  forall (i=1:n3,j=1:n2,k=n1:1:-1)
    where(mask(k,vs1,vs2))
      a(k,vs1,vs2)=z(null())
    elsewhere
      a(k,vs1,vs2)=z(reshape((/1,2,3,4/),(/2,2/)))
    end where
  end forall

  mask = .true.

  do i=1,n3
    do j=1,n2
      do k=1,n1
        if (.not.allocated(a(k,j,i)%za2)) write(6,*) "NG"
        if (any(a(k,j,i)%za2/=reshape((/1,2,3,4/),(/2,2/)))) write(6,*) "NG"
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
    where(.not.mask(vs1,vs1,k))
      b(vs1,vs1,k)=z(null())
    elsewhere(mask(vs1,vs1,k))
      b(vs1,vs1,k)=a(vs1,vs1,k)
    end where
  end forall

  do i=1,n3
    do j=1,n3
      do k=1,n3
        deallocate(a(k,j,i)%za2)
      enddo
    enddo
  enddo

  if (     allocated(b(2,1,1)%za2)) write(6,*) "NG"
  if (     allocated(b(1,2,1)%za2)) write(6,*) "NG"
  if (     allocated(b(1,1,2)%za2)) write(6,*) "NG"
  if (     allocated(b(2,2,2)%za2)) write(6,*) "NG"
  if (.not.allocated(b(1,1,1)%za2)) write(6,*) "NG"
  if (any(b(1,1,1)%za2/=reshape((/1,2,3,4/),(/2,2/)))) write(6,*) "NG"
  if (.not.allocated(b(2,2,1)%za2)) write(6,*) "NG"
  if (any(b(2,2,1)%za2/=reshape((/1,2,3,4/),(/2,2/)))) write(6,*) "NG"
  if (.not.allocated(b(2,1,2)%za2)) write(6,*) "NG"
  if (any(b(2,1,2)%za2/=reshape((/1,2,3,4/),(/2,2/)))) write(6,*) "NG"
  if (.not.allocated(b(1,2,2)%za2)) write(6,*) "NG"
  if (any(b(1,2,2)%za2/=reshape((/1,2,3,4/),(/2,2/)))) write(6,*) "NG"

 print *,'pass'
end
