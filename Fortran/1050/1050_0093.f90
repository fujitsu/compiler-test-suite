
program main
  integer,dimension(:),allocatable::a
  integer,dimension(5)::b,c,d
  integer::n=5,err
  allocate(a(n))
  a=10
  b=10
  !$omp parallel
  !$omp sections lastprivate(a,b)
  !$omp section
  do i=1,n
     a(i)=i
     b(i)=i
     if (a(i).eq.b(i)) then
        c(i)=0
     else
        c(i)=1
     end if
  end do
  !$omp section
  do i=1, n
     a(i)=i+n
     b(i)=i+n
     if (a(i).eq.b(i)) then
        d(i)=0
     else
        d(i)=1
     end if
  end do
  !$omp end sections
  !$omp end parallel

  err =0
  do i=1,n
     if (c(i).eq.1.or.d(i).eq.1) err = err +1
  end do
  if (err .eq. 0) then
     print *,"OK"
  else
     print *,"NG"
  endif
end program main
