
program main
  integer,dimension(:),allocatable::a
  integer,dimension(10)::b,c
  integer::n=10,err
  allocate(a(n))
  a=n
  b=n
  c=0
  !$omp parallel
  !$omp do firstprivate(a,b)
  do i=1,n
     a(i)=a(i)+i
     b(i)=b(i)+i
     if (a(i).ne.b(i)) c(i)=1
  end do
  !$omp end do
  !$omp end parallel

  err=0
  do i=1,n
     if (c(i).eq.1) err=err+1
  end do
  if (err.eq.0) then
     print *,"OK"
  else
     print *,"NG"
  endif
end program main
