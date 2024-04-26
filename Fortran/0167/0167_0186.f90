module m1
  integer(4) :: a
  integer(4) :: b(100),c(100)
  !$omp threadprivate(b)
end

module m2
  use m1,x=>a,y=>b,z=>c
end

subroutine sub1
  use m1,xx=>a,yy=>b,zz=>c
  use m2
  
  integer(8),allocatable :: addr(:)
  integer omp_get_max_threads, omp_get_thread_num
  allocate(addr(omp_get_max_threads()))
  !$omp parallel
  addr(omp_get_thread_num()+1) = loc(yy)
  !$omp end parallel
  do i=1,omp_get_max_threads()-1
     if (any(addr(i) == addr(i+1:))) print *,i,addr(i)
  end do
  !$omp parallel
  addr(omp_get_thread_num()+1) = loc(y)
  !$omp end parallel
  do i=1,omp_get_max_threads()-1
     if (any(addr(i) == addr(i+1:))) print *,i,addr(i)
  end do
  
  call sub
  if (xx /= 11) print *,4
  if (x /= 11) print *,4
  if (any(yy /= 22)) print *,4
  if (any(y /= 22)) print *,4
  if (any(zz /= 33)) print *,4
  if (any(z /= 33)) print *,4
  if (size(yy) /= 100) print *,6
  if (size(y) /= 100) print *,6
  if (size(zz) /= 100) print *,6
  if (size(z) /= 100) print *,6
end subroutine

subroutine sub2
  use m1
  use m2,xx=>x,yy=>y,zz=>z
  
  integer(8),allocatable :: addr(:)
  integer omp_get_max_threads, omp_get_thread_num
  allocate(addr(omp_get_max_threads()))
  !$omp parallel
  addr(omp_get_thread_num()+1) = loc(b)
  !$omp end parallel
  do i=1,omp_get_max_threads()-1
     if (any(addr(i) == addr(i+1:))) print *,i,addr(i)
  end do
  !$omp parallel
  addr(omp_get_thread_num()+1) = loc(yy)
  !$omp end parallel
  do i=1,omp_get_max_threads()-1
     if (any(addr(i) == addr(i+1:))) print *,i,addr(i)
  end do
  
  call sub
  if (a /= 11) print *,4
  if (xx /= 11) print *,4
  if (any(b /= 22)) print *,4
  if (any(yy /= 22)) print *,4
  if (any(c /= 33)) print *,4
  if (any(zz /= 33)) print *,4
  if (size(b) /= 100) print *,6
  if (size(yy) /= 100) print *,6
  if (size(c) /= 100) print *,6
  if (size(zz) /= 100) print *,6
end subroutine

call sub1
call sub2
print *,'pass'
end

subroutine sub
  use m1
  a=11
  b=22
  c=33
end
