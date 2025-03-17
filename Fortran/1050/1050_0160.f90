
program main
  !$ use omp_lib
  integer,dimension(:),allocatable::a
  integer,dimension(10)::b
  integer,dimension(:,:,:),allocatable::c,d
  integer :: n=10, max=1, now1=1, now2=1, err
  integer :: i, j, k
  max=omp_get_max_threads()
  allocate(c(n,max,max))
  allocate(d(n,max,max))
  c=0
  d=0
  allocate(a(n))
  !$omp parallel private(now1)
  now1=omp_get_thread_num()+1
  !$omp sections lastprivate(a,b)
  !$omp section
  !$omp parallel private(a,b,now2) shared(now1)
  do j=1,n
     now2=omp_get_thread_num()+1
     a(j)=j
     b(j)=j
     if (a(j).eq.b(j)) then
        c(j,now1,now2)=0
     else
        c(j,now1,now2)=1
     end if
  end do
  !$omp end parallel
  !$omp section
  !$omp parallel private(a,b,now2) shared(now1)
  do j=1,n
     now2=omp_get_thread_num()+1
     a(j)=j+n
     b(j)=j+n
     if (a(j).eq.b(j)) then
        d(j,now1,now2)=0
     else
        d(j,now1,now2)=1
     end if
  end do
  !$omp end parallel
  !$omp end sections
  !$omp end parallel

  err=0
  do i=1,n
   do j=1,max
    do k=1,max
     if (c(i,j,k).eq.1 .or. d(i,j,k).eq.1) err=err+1
    end do
   end do
  end do
  if (err.eq.0) then
     print *,"OK"
  else
     print *,"NG"
  endif
end program main
