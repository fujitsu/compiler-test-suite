
program main
  complex,dimension(:),allocatable::a
  complex,dimension(10)::b
  integer,dimension(10)::c
  integer::n=10,err
  allocate(a(n))
  a=n
  b=n
  !$omp parallel private(a,b)
  do i=1,n
     a(i)=cmplx(i,i+n)
     b(i)=cmplx(i,i+n)
     if (a(i) .eq. b(i)) then
        c(i)=0
     else
        c(i)=1
     end if
  end do
  !$omp end parallel

  err =0
  do i=1,n
     if (c(i) .eq. 1) err = err +1
  end do
  if (err .eq. 0) then
     print *,"OK"
  else
     print *,"NG"
  endif
end program main
