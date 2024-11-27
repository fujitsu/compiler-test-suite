integer(4),parameter::n=1
integer(4),parameter::m=1
type z
  integer(4),allocatable,dimension(:)::za
end type
type y
  type (z)  ,allocatable,dimension(:)::ya
end type
type (y)    ,allocatable,dimension(:)::a,b

  allocate(a(n))
  allocate(b(n))
  do i=1,n
    allocate(a(i)%ya(m))
    allocate(b(i)%ya(m))
    do j=1,m
      allocate(a(i)%ya(j)%za(2))
      allocate(b(i)%ya(j)%za(2))
      b(i)%ya(j)%za = (/1,2/)
    enddo
  enddo

  a=b

  b(1)%ya(1)%za = (/11,12/)
  if (.not.allocated(a(1)%ya(1)%za)) write(6,*) "NG"
  if (any(a(1)%ya(1)%za/=(/1,2/))) write(6,*) "NG"

 print *,'pass'
end
