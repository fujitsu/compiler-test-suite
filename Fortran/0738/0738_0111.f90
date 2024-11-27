type z
  integer(4),allocatable,dimension(:)::za
end type
type y
  type(z)               ,dimension(2,2,2)::ya
end type

type (y)    ,allocatable,dimension(:)::a
type (z)                ,dimension(2,2,2)::b

  allocate(a(2))

  j=0
  do i1=1,2
    do i2=1,2
      do i3=1,2
        allocate(a(1)%ya(i1,i2,i3)%za(2))
        allocate(a(2)%ya(i1,i2,i3)%za(2))
        j=j+1
        a(1)%ya(i1,i2,i3)%za = j
        a(2)%ya(i1,i2,i3)%za = j
        allocate(b(i1,i2,i3)%za(5))
      enddo
    enddo
  enddo

  do k=1,2
    b(k,k,k) = a(k)%ya(k,k,k)
  enddo

  do i1=1,2
    do i2=1,2
      do i3=1,2
        deallocate(a(1)%ya(i1,i2,i3)%za)
        deallocate(a(2)%ya(i1,i2,i3)%za)
      enddo
    enddo
  enddo

  if (size(b(1,1,2)%za)/=5) write(6,*) "NG" 
  if (size(b(1,2,1)%za)/=5) write(6,*) "NG" 
  if (size(b(1,2,2)%za)/=5) write(6,*) "NG" 
  if (size(b(2,1,1)%za)/=5) write(6,*) "NG" 
  if (size(b(2,1,2)%za)/=5) write(6,*) "NG" 
  if (size(b(2,2,1)%za)/=5) write(6,*) "NG" 
  if (size(b(1,1,1)%za)/=2) write(6,*) "NG" 
  if (size(b(2,2,2)%za)/=2) write(6,*) "NG" 
  if (any(b(1,1,1)%za/=(/1,1/))) write(6,*) "NG" 
  if (any(b(2,2,2)%za/=(/8,8/))) write(6,*) "NG" 

  print *,'pass'
end
