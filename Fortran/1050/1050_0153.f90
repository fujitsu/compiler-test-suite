
program main
  !$ use omp_lib
  complex,dimension(:),allocatable::a
  complex,dimension(10)::b
  integer,dimension(:,:),allocatable::c
  integer :: n=10, max=1, now=1, err, num_threads=1
  !$omp threadprivate(a,b)
  max=omp_get_max_threads()
  allocate(c(n,max))
  !$omp parallel
  allocate(a(n))
  !$omp end parallel
  a=(5,10)
  b=(5,10)
  !$omp parallel private(now) copyin(a,b)
  do i=1,n
     now=omp_get_thread_num()+1
     a(i)=a(i)+cmplx(i,i+n)
     b(i)=b(i)+cmplx(i,i+n)
     if (a(i).eq.b(i)) then
        c(i,now)=0
     else
        c(i,now)=1
     end if
  end do
  !$omp master
  num_threads=omp_get_num_threads()
  !$omp end master
  !$omp end parallel

  err=0
  do i=1,n
   do j=1,num_threads
     if (c(i,j).eq.1) err=err+1
   end do
  end do
  if (err.eq.0) then
     print *,"OK"
  else
     print *,"NG"
  endif
end program main
