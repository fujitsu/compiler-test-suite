type z
  integer(4),allocatable,dimension(:)::za1
  integer(4)            ,dimension(2)::za2
  integer(4),allocatable,dimension(:)::za3
  integer(4)            ,dimension(2)::za4
  integer(4),allocatable,dimension(:)::za5
end type
type(z)                              ::a,b

  allocate(a%za1(3))
  allocate(a%za3(3))
  allocate(a%za5(3))
  allocate(b%za1(1))
  allocate(b%za3(3))
  allocate(b%za5(5))
  b%za1 = 1
  b%za2 = 2
  b%za3 = 3
  b%za4 = 4
  b%za5 = 5

  a = b

  deallocate(b%za1)
  deallocate(b%za3)
  deallocate(b%za5)

  if (size(a%za1)/=1) write(6,*) "NG"
  if (size(a%za3)/=3) write(6,*) "NG"
  if (size(a%za5)/=5) write(6,*) "NG"
  if (any(a%za1/=1)) write(6,*) "NG"
  if (any(a%za2/=2)) write(6,*) "NG"
  if (any(a%za3/=3)) write(6,*) "NG"
  if (any(a%za4/=4)) write(6,*) "NG"
  if (any(a%za5/=5)) write(6,*) "NG"

  print *,'pass'
 end
