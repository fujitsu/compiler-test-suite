
program main
  !$ use omp_lib
  integer,dimension(:),allocatable::a1,a2,a3,a4,a5
  integer,dimension(10)::b1,b2,b3,b4,b5
  integer,dimension(:,:),allocatable::c
  integer::n=10,max=1,now=1,err
  !$omp threadprivate(a5,b5)
  max=omp_get_max_threads()+1
  allocate(c(n,max))
  allocate(a1(n))
  allocate(a2(n))
  allocate(a3(n))
  allocate(a4(n))
  !$omp parallel
  allocate(a5(n))
  !$omp end parallel
  a1=n 
  a2=n
  a3=n
  a4=n
  a5=n
  b1=n
  b2=n
  b3=n
  b4=n
  b5=n
  c=0
  !$omp parallel do private(a1,b1,now) firstprivate(a2,b2) lastprivate(a3,b3) reduction(+:a4,b4) copyin(a5,b5)
  do i=1,n
     now=omp_get_thread_num()+1

     a1(i)=i
     b1(i)=i

     a2(i)=a2(i)+i
     b2(i)=b2(i)+i

     a3(i)=i
     b3(i)=i

     a4(i)=a4(i)+i
     b4(i)=b4(i)+i

     a5(i)=a5(i)+i
     b5(i)=b5(i)+i

     if (a1(i).ne.b1(i)) c(i,now)=c(i,now)+1
     if (a2(i).ne.b2(i)) c(i,now)=c(i,now)+1
     if (a3(i).ne.b3(i)) c(i,now)=c(i,now)+1
     if (a4(i).ne.b4(i)) c(i,now)=c(i,now)+1
     if (a5(i).ne.b5(i)) c(i,now)=c(i,now)+1
  end do
  !$omp end parallel do

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
