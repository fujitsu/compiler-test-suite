type z
  integer(4),allocatable,dimension(:)::za1
  integer(4),allocatable,dimension(:)::za2
  integer(4),allocatable,dimension(:)::za3
  integer(4),allocatable,dimension(:)::za4
  integer(4),allocatable,dimension(:)::za5
end type
type(z)                              ::a,b

  allocate(a%za1(2))
  allocate(a%za2(2))
  allocate(a%za3(2))
  allocate(a%za4(2))
  allocate(a%za5(2))
  allocate(b%za1(2))
  allocate(b%za2(2))
  allocate(b%za3(2))
  allocate(b%za4(2))
  allocate(b%za5(2))
  b%za1 = 1
  b%za2 = 2
  b%za3 = 3
  b%za4 = 4
  b%za5 = 5

  a = b

  deallocate(b%za1)
  deallocate(b%za2)
  deallocate(b%za3)
  deallocate(b%za4)
  deallocate(b%za5)

  if (.not.allocated(a%za1)) write(6,*) "NG"
  if (.not.allocated(a%za2)) write(6,*) "NG"
  if (.not.allocated(a%za3)) write(6,*) "NG"
  if (.not.allocated(a%za4)) write(6,*) "NG"
  if (.not.allocated(a%za5)) write(6,*) "NG"
  if (any(a%za1/=1)) write(6,*) "NG"
  if (any(a%za2/=2)) write(6,*) "NG"
  if (any(a%za3/=3)) write(6,*) "NG"
  if (any(a%za4/=4)) write(6,*) "NG"
  if (any(a%za5/=5)) write(6,*) "NG"

  print *,'pass'
 end
