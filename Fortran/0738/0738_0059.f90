integer(4),parameter::n=1
type z
  integer(4),allocatable,dimension(:)::za
end type
type y
  type (z)  ,allocatable,dimension(:)::ya
end type
type (y)    ,allocatable,dimension(:)::a,b

  allocate(a(1))
  allocate(b(1))
  allocate(a(1)%ya(n))
  allocate(b(1)%ya(n))
  do i=1,n
   allocate(a(1)%ya(i)%za(2))
   allocate(b(1)%ya(i)%za(2))
   b(1)%ya(i)%za = 1
  enddo

  a=b

  b(1)%ya(1)%za = 2
  if (any(b(1)%ya(1)%za/=(/2,2/))) write(6,*) "NG"
  deallocate(b(1)%ya(1)%za)
  deallocate(b(1)%ya)
  deallocate(b)
  if (any(a(1)%ya(1)%za/=(/1,1/))) write(6,*) "NG"

 print *,'pass'
end
