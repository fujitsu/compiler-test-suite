
program main
  real,dimension(:),allocatable::a1
  real,dimension(10)::b1
  logical,dimension(:),allocatable::a2
  logical,dimension(10)::b2
  character,dimension(:),allocatable::a3
  character,dimension(10)::b3
  integer,dimension(10)::c
  integer::n=10,err
  allocate(a1(n))
  allocate(a2(n))
  allocate(a3(n))
  a1=n
  b1=n
  a2=.false.
  b2=.false.
  a3="ABC"
  b3="ABC"
  c=0
  !$omp parallel
  !$omp do firstprivate(a1,a2,a3,b1,b2,b3)
  do i=1,n
     a1(i)=a1(i)+i
     b1(i)=b1(i)+i
     a2(i)=a2(i).eqv..false.
     b2(i)=b2(i).eqv..false.
     a3(i)=a3(i)//"abc"
     b3(i)=b3(i)//"abc"
     if (a1(i).ne.b1(i)) c(i)=c(i)+1
     if (a2(i).neqv.b2(i)) c(i)=c(i)+1
     if (a3(i).ne.b3(i)) c(i)=c(i)+1
  end do
  !$omp end do
  !$omp end parallel

  err=0
  do i=1,n
     if (c(i).eq.1) err=err +1
  end do
  if (err.eq.0) then
     print *,"OK"
  else
     print *,"NG"
  endif
end program main
