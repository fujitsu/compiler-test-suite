type z
 integer,allocatable,dimension(:)::p
end type
type (z) a,b
  allocate(a%p(2))
  allocate(b%p(3))
  b%p=(/1,2,3/)

  a=b

  deallocate(b%p)
  if (size(a%p)/=3) print *,size(a%p)
  if (size(a%p)/=3) write(6,*) "NG"
  if (any(a%p/=(/1,2,3/))) write(6,*) "NG"
  print *,'pass'
end
