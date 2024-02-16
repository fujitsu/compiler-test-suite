  character(:), allocatable :: a(:), b(:)
  allocate(a(3),source=["11","22","33"])
  call move_alloc(a, b)
  if(allocated(a).neqv..false.) print *,'err1'
  if(allocated(b).neqv..true.) print *,'err2'
 if(any(b/=["11","22","33"])) print *,'err3'
print *,'pass'
end
