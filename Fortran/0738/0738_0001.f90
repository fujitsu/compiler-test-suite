type z
  integer,allocatable,dimension(:)::p
end type
type (z) a,b
  allocate(a%p(2))
  allocate(b%p(7))
  b%p=(/1,2,3,4,5,6,7/)
  a=b
  b%p=(/11,12,13,14,15,16,17/)
  if (.not.allocated(a%p)) write(6,*) "NG"
  if (size(a%p)/=7) write(6,*) "NG"
  if (any(a%p/=(/1,2,3,4,5,6,7/))) write(6,*) "NG"
  if (any(b%p/=(/11,12,13,14,15,16,17/))) write(6,*) "NG"
  deallocate(a%p)
  print *,'pass'
end
