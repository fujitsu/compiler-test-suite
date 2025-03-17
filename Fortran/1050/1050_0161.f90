
program main
  !$ use omp_lib
  integer,dimension(:),allocatable::a
  integer,dimension(10)::b
  integer,dimension(:,:,:),allocatable::c
  integer :: n=10, max=1, now1=1, now2=1, err
  integer :: i, j, k
  max=omp_get_max_threads()
  allocate(c(n,max,max))
  c=0
  allocate(a(n))
  a=n
  b=n+1
  !$omp parallel private(now1) firstprivate(a,b)
  now1=omp_get_thread_num()+1
  !$omp single
  !$omp parallel firstprivate(a,b) private(now2) shared(now1)
  do j=1,n
     now2=omp_get_thread_num()+1
     if (a(j).ne.n .or. b(j).ne.n+1) then
        c(j,now1,now2)=1
     endif
     a(j)=a(j)+j
     b(j)=b(j)+j-1
     if (a(j).ne.b(j) .or. a(j).ne.n+j) then
        c(j,now1,now2)=2
     end if
  end do
  !$omp end parallel
  !$omp end single
  !$omp end parallel

  err=0
  do i=1,n
   do j=1,max
    do k=1,max
     if (c(i,j,k).ne.0) err=err+1
    end do
   end do
  end do
  if (err.eq.0) then
     print *,"OK"
  else
     print *,"NG"
  endif
end program main
