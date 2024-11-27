type z
  integer(4),allocatable,dimension(:)::za
end type
type y
  type(z)   ,allocatable,dimension(:,:,:)::ya
end type

type (y)    ,allocatable,dimension(:)::a
type (z)                ,dimension(2,2,2)::b

  allocate(a(2))
  allocate(a(1)%ya(2,2,2))
  allocate(a(2)%ya(2,2,2))

  j=0
  do i1=1,2
    do i2=1,2
      do i3=1,2
        j=j+1
        allocate(a(1)%ya(i1,i2,i3)%za(j))
        allocate(a(2)%ya(i1,i2,i3)%za(j))
        a(1)%ya(i1,i2,i3)%za = (/(n,n=1,j)/)
        a(2)%ya(i1,i2,i3)%za = (/(n,n=1,j)/)
        allocate(b(i1,i2,i3)%za(5))
      enddo
    enddo
  enddo

  do k=1,2
    b(k,k,k) = a(k)%ya(k,k,k)
  enddo
  a(1)%ya(:,:,:) = b(2,2,2)
  a(2) = a(1)

  do i1=1,2
  do i2=1,2
  do i3=1,2
  do i4=1,2
  if (size(a(i1)%ya(i2,i3,i4)%za)/=8) write(6,*) "NG" 
  if (any(a(i1)%ya(i2,i3,i4)%za/=(/1,2,3,4,5,6,7,8/))) write(6,*) "NG" 
  enddo
  enddo
  enddo
  enddo

  print *,'pass'
end
