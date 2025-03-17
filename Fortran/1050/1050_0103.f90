
program main
  integer,dimension(:),allocatable::a
  integer,dimension(5)::b
  integer,dimension(5)::c
  integer::n=5,err
  allocate(a(n))
  a=10
  b=10
  !$omp parallel
  !$omp single firstprivate(a,b)
  do i=1,n
     a(i)=a(i)+i
     b(i)=b(i)+i
     if (a(i).eq.b(i)) then
        c(i)=0
     else
        c(i)=1
     end if
  end do
  !$omp end single
  !$omp end parallel

  err=0
  do i=1,n
     if (c(i).eq.1) err=err+1
  end do
  if (err .eq. 0) then
     print *,"OK"
  else
     print *,"NG"
  endif
end program main
