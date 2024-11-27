type z
  integer(4),allocatable,dimension(:)::p
end type
type (z)    ,allocatable,dimension(:,:)::a,b
  allocate(a(2,2),b(2,2))
  allocate(a(1,1)%p(5))
  allocate(a(2,1)%p(5))
  allocate(a(1,2)%p(3))
  allocate(a(2,2)%p(3))
  allocate(b(1,2)%p(2))
  allocate(b(2,1)%p(3))
  b(1,2)%p=(/1,2/)
  b(2,1)%p=(/3,4,5/)
  a(1,2)=b(2,1)
  a(2,1)=b(1,2)
  a(1,1)=a(1,2)
  a(2,2)=a(2,1)
  deallocate(b(2,1)%p,b(1,2)%p)
  deallocate(b)
  if (.not.allocated(a(1,1)%p)) write(6,*) "NG"
  if (.not.allocated(a(1,2)%p)) write(6,*) "NG"
  if (.not.allocated(a(2,1)%p)) write(6,*) "NG"
  if (.not.allocated(a(2,2)%p)) write(6,*) "NG"
  if (size(a(1,1)%p)/=3) write(6,*) "NG"
  if (any(a(1,1)%p/=(/3,4,5/))) print *,'a(1,1)',a(1,1)%p
  if (size(a(1,2)%p)/=3) write(6,*) "NG"
  if (any(a(1,2)%p/=(/3,4,5/))) print *,'a(1,2)',a(1,2)%p
  if (size(a(2,1)%p)/=2) write(6,*) "NG"
  if (any(a(2,1)%p/=(/1,2/))) print *,'a(2,1)',a(2,1)%p
  if (size(a(2,2)%p)/=2) write(6,*) "NG"
  if (any(a(2,2)%p/=(/1,2/))) print *,'a(2,2)',a(2,2)%p
  print *,'pass'
end
