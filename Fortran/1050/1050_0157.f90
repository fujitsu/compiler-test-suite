
program main
  !$ use omp_lib
  type test
     integer::x,y
  end type test
  type(test),dimension(:),allocatable::a
  type(test),dimension(10)::b
  integer,dimension(:,:),allocatable::c,d
  integer::n=10,max=1,now=1,err
  max=omp_get_max_threads()+1
  allocate(c(n,max))
  allocate(d(n,max))
  c = 0
  d = 0
  !$omp parallel private(now)
  !$omp sections private(a,b)
  !$omp section
  do i=1,n
     allocate(a(n))
     now=omp_get_thread_num()+1
     a(i)%x=i
     a(i)%y=i+n
     b(i)%x=i
     b(i)%y=i+n
     if (a(i)%x.eq.b(i)%x.and.a(i)%y.eq.b(i)%y) then
        c(i,now)=0
     else
        c(i,now)=1
     end if
     deallocate(a)
  end do
  !$omp section
  do i=1,n
     allocate(a(n))
     now=omp_get_thread_num()+1
     a(i)%x=i+n
     a(i)%y=i*n
     b(i)%x=i+n
     b(i)%y=i*n
     if (a(i)%x.eq.b(i)%x.and.a(i)%y.eq.b(i)%y) then
        d(i,now)=0
     else
        d(i,now)=1
     end if
     deallocate(a)
  end do
  !$omp end sections
  !$omp end parallel

  err=0
  do i=1,n
   do j=1,max
     if (c(i,j).eq.1.or.d(i,j).eq.1) then
        err=err+1
     end if
   end do
  end do
  if (err.eq.0) then
     print *,"OK"
  else
     print *,"NG"
  endif
end program main
