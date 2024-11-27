type z
  integer(4),allocatable,dimension(:)::za
end type

type (z)    ,allocatable,dimension(:,:,:,:)::a,b

  allocate(a(2,2,2,2))
  allocate(b(2,2,2,2))

  k1=1;k2=2

  j=0
  do i1=1,2
    do i2=1,2
      do i3=1,2
        do i4=1,2
          j=j+1
          allocate(a(i1,i2,i3,i4)%za(2))
          a(i1,i2,i3,i4)%za = j
        enddo
      enddo
    enddo
  enddo

  b(k1,k1,:,k1) = a(k2,k2,:,k2)

  do i1=1,2
    do i2=1,2
      do i3=1,2
        do i4=1,2
          deallocate(a(i1,i2,i3,i4)%za)
        enddo
      enddo
    enddo
  enddo

  if (.not.allocated(b(1,1,1,1)%za)) write(6,*) "NG"
  if (     allocated(b(1,1,1,2)%za)) write(6,*) "NG"
  if (.not.allocated(b(1,1,2,1)%za)) write(6,*) "NG"
  if (     allocated(b(1,1,2,2)%za)) write(6,*) "NG"
  if (     allocated(b(1,2,1,1)%za)) write(6,*) "NG"
  if (     allocated(b(1,2,1,2)%za)) write(6,*) "NG"
  if (     allocated(b(1,2,2,1)%za)) write(6,*) "NG"
  if (     allocated(b(1,2,2,2)%za)) write(6,*) "NG"
  if (     allocated(b(2,1,1,1)%za)) write(6,*) "NG"
  if (     allocated(b(2,1,1,2)%za)) write(6,*) "NG"
  if (     allocated(b(2,1,2,1)%za)) write(6,*) "NG"
  if (     allocated(b(2,1,2,2)%za)) write(6,*) "NG"
  if (     allocated(b(2,2,1,1)%za)) write(6,*) "NG"
  if (     allocated(b(2,2,1,2)%za)) write(6,*) "NG"
  if (     allocated(b(2,2,2,1)%za)) write(6,*) "NG"
  if (     allocated(b(2,2,2,2)%za)) write(6,*) "NG"
  if (any(b(1,1,1,1)%za/=(/14,14/))) write(6,*) "NG"
  if (any(b(1,1,2,1)%za/=(/16,16/))) write(6,*) "NG"

  print *,'pass'
end
