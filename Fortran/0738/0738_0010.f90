type z
  integer(4),allocatable,dimension(:)::zp
end type
type y
  type (z)                           ::yi(2)
end type
type (y)                ,dimension(1)::a,b
  allocate(a(1)%yi(1)%zp(5))
  allocate(a(1)%yi(2)%zp(5))
  allocate(b(1)%yi(1)%zp(2))
  allocate(b(1)%yi(2)%zp(3))
  b(1)%yi(1)%zp=(/1,2/)
  b(1)%yi(2)%zp=(/3,4,5/)

  a(1)=b(1)

  deallocate(b(1)%yi(1)%zp)
  deallocate(b(1)%yi(2)%zp)
  if (size(a(1)%yi(1)%zp)/=2) write(6,*) "NG"
  if (size(a(1)%yi(2)%zp)/=3) write(6,*) "NG"
  if (any(a(1)%yi(1)%zp/=(/1,2/))) write(6,*) "NG"
  if (any(a(1)%yi(2)%zp/=(/3,4,5/))) write(6,*) "NG"
  print *,'pass'
end
