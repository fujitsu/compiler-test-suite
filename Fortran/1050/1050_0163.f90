
program main
  !$ use omp_lib
  integer,dimension(:),allocatable::a
  integer,dimension(10)::b
  integer,dimension(:,:),allocatable::c,d
  integer::n=10,max=1,now=1,err
  max=omp_get_max_threads()+1
  allocate(c(n,max))
  allocate(d(n,max))
  allocate(a(n))
  a=n
  b=n
  c=0
  d=0
  !$omp parallel firstprivate(a,b)
  !$omp parallel
  !$omp sections private(now) firstprivate(a,b)
  !$omp section
  do i=1,n
     now=omp_get_thread_num()+1
     a(i)=a(i)+i
     b(i)=b(i)+i
     if (a(i).eq.b(i)) then
        c(i,now)=0
     else
        c(i,now)=1
     end if
  end do
  !$omp section
  do i=1,n
     now=omp_get_thread_num()+1
     a(i)=a(i)+i+n
     b(i)=b(i)+i+n
     if (a(i).eq.b(i)) then
        d(i,now)=0
     else
        d(i,now)=1
     end if
  end do
  !$omp end sections
  !$omp end parallel
  !$omp end parallel

  err=0
  do i=1,n
   do j=1,max
     if (c(i,j).eq.1.or.d(i,j).eq.1) err=err+1
   end do
  end do
  if (err.eq.0) then
     print *,"OK"
  else
     print *,"NG"
  endif
end program main
