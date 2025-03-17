
program main
  complex,dimension(:),allocatable::a
  complex,dimension(10)::b
  integer,dimension(10)::c
  integer::n=10,err
  allocate(a(n))
  a=(10,5)
  b=(10,5)
  c=0
  !$omp parallel
  !$omp do private(a,b)
  do i=1,n
     a(i)=cmplx(i,n)
     b(i)=cmplx(i,n)
     if (a(i).ne.b(i)) c(i)=1
  end do
  !$omp end do
  !$omp end parallel

  err =0
  do i=1,n
     if (c(i).eq.1) err=err +1
  end do
  if (err.eq.0) then
     print *,"OK"
  else
     print *,"NG"
  endif
end program main
