
program main
  !$ use omp_lib
  integer,dimension(:,:,:,:,:,:,:),allocatable::a1,a2,a3,a4
  integer,dimension(2,2,2,2,2,2,2)::b1,b2,b3,b4
  integer,dimension(:,:),allocatable::c
  integer::n=2,max=1,now=1,err
  max=omp_get_max_threads()+1
  allocate(c(n,max))
  allocate(a1(n,n,n,n,n,n,n))
  allocate(a2(n,n,n,n,n,n,n))
  allocate(a3(n,n,n,n,n,n,n))
  allocate(a4(n,n,n,n,n,n,n))
  a1=n 
  a2=n
  a3=n
  a4=n
  b1=n
  b2=n
  b3=n
  b4=n
  c=0
  !$omp parallel
  !$omp single private(a1,b1,now) firstprivate(a2,b2)
  do i=1,n
     now=omp_get_thread_num()+1

     a1(1,1,1,1,1,1,i)=i
     b1(1,1,1,1,1,1,i)=i

     a2(1,1,1,1,1,1,i)=a2(1,1,1,1,1,1,i)+i
     b2(1,1,1,1,1,1,i)=b2(1,1,1,1,1,1,i)+i

     a3(1,1,1,1,1,1,i)=i
     b3(1,1,1,1,1,1,i)=i

     a4(1,1,1,1,1,1,i)=a4(1,1,1,1,1,1,i)+i
     b4(1,1,1,1,1,1,i)=b4(1,1,1,1,1,1,i)+i

     if (a1(1,1,1,1,1,1,i).ne.b1(1,1,1,1,1,1,i)) c(i,now)=c(i,now)+1
     if (a2(1,1,1,1,1,1,i).ne.b2(1,1,1,1,1,1,i)) c(i,now)=c(i,now)+1
     if (a3(1,1,1,1,1,1,i).ne.b3(1,1,1,1,1,1,i)) c(i,now)=c(i,now)+1
     if (a4(1,1,1,1,1,1,i).ne.b4(1,1,1,1,1,1,i)) c(i,now)=c(i,now)+1
  end do
  !$omp end single
  !$omp end parallel

  err=0
  do i=1,n
   do j=1,max
     if (c(i,j).ne.0) err=err+1
   end do
  end do
  if (err.eq.0) then
     print *,"OK"
  else
     print *,"NG"
  endif
end program main
