type z
  integer(4),allocatable,dimension(:)::zp
end type
type y
  type (z)                           ::yi(2)
end type
type (y)                             ::a,b
  allocate(a%yi(1)%zp(5))
  allocate(a%yi(2)%zp(5))
  allocate(b%yi(1)%zp(2))
  allocate(b%yi(2)%zp(3))
  b%yi(1)%zp=(/1,2/)
  b%yi(2)%zp=(/3,4,5/)

  a=b

  deallocate(b%yi(1)%zp)
  deallocate(b%yi(2)%zp)
  if (size(a%yi(1)%zp)/=2) write(6,*) "NG"
  if (size(a%yi(2)%zp)/=3) write(6,*) "NG"
  if (any(a%yi(1)%zp/=(/1,2/))) write(6,*) "NG"
  if (any(a%yi(2)%zp/=(/3,4,5/))) write(6,*) "NG"
  print *,'pass'
end
