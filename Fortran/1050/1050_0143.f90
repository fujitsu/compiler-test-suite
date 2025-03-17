
program main
  type test
     integer::x,y
  end type test
  type(test),dimension(:),allocatable::a
  type(test),dimension(10)::b
  integer,dimension(10)::c
  integer::n=10,err
  allocate(a(n))
  a=test(5,10)
  b=test(5,10)
  !$omp parallel firstprivate(a,b)
  do i=1,n
     a(i)%x=a(i)%x+i
     b(i)%x=b(i)%x+i
     a(i)%y=a(i)%y+i+n
     b(i)%y=b(i)%y+i+n
     if (a(i)%x.eq.b(i)%x.and.a(i)%y.eq.b(i)%y) then
        c(i)=0
     else
        c(i)=1
     end if
  end do
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
