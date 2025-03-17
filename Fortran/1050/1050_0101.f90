
program main
  type test
     integer::x,y
  end type test
  type(test),dimension(:),allocatable::a
  type(test),dimension(5)::b
  integer,dimension(5)::c,d
  integer::n=5
  allocate(a(n))
  a=test(5,10)
  b=test(5,10)
  !$omp parallel
  !$omp sections lastprivate(a,b)
  !$omp section
  do i=1,n
     a(i)=test(i,n)
     b(i)=test(i,n)
     if (a(i)%x.eq.b(i)%x.and.a(i)%y.eq.b(i)%y) then
        c(i)=0
     else
        c(i)=1
     end if
  end do
  !$omp section
  do i=1,n
     a(i)=test(15,20)
     b(i)=test(15,20)
     if (a(i)%x.eq.b(i)%x.and.a(i)%y.eq.b(i)%y) then
        d(i)=0
     else
        d(i)=1
     end if
  end do
  !$omp end sections
  !$omp end parallel

  err=0
  do i=1,n
     if (c(i).eq.1.or.d(i).eq.1) err = err +1
  end do
  if (err .eq. 0) then
     print *,"OK"
  else
     print *,"NG"
  endif
end program main
