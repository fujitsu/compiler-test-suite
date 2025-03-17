
program main
  integer,dimension(:),allocatable::a
  integer,dimension(10)::b
  integer::n=10,err
  allocate(a(n))
  a=n
  b=n
  !$omp parallel workshare shared(a,b)
  a=a+25
  b=b+25
  !$omp end parallel workshare

  err=0
  do i=1,n
     if (a(i).ne.b(i)) err=err+1
  end do
  if (err.eq.0) then
     print *,"OK"
  else
     print *,"NG"
     print *, "a [", a, "] b [", b, "]"
  endif
end program main
