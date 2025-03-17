
program main
  !$ use omp_lib
  type test
     integer::x,y
  end type test
  type(test),dimension(:),allocatable::a
  type(test),dimension(10)::b
  integer,dimension(:,:),allocatable::c
  integer :: n=10, max=1, now=1, err, num_threads=1
  !$omp threadprivate(a,b)
  max=omp_get_max_threads()
  allocate(c(n,max))
  !$omp parallel
  allocate(a(n))
  !$omp end parallel
  a=test(5,10)
  b=test(5,10)
  !$omp parallel private(now) copyin(a,b)
  do i=1,n
     now=omp_get_thread_num()+1
     a(i)%x=a(i)%x+i
     a(i)%y=a(i)%y+i+n
     b(i)%x=b(i)%x+i
     b(i)%y=b(i)%y+i+n
     if (a(i)%x.eq.b(i)%x.and.a(i)%y.eq.b(i)%y) then
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
