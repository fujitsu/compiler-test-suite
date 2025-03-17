
program main
  interface
     subroutine sub(a,b,c,d,n)
       complex,allocatable,intent(inout)::a(:)
       complex,intent(inout)::b(n)
       integer,intent(inout)::c(n),d(n)
       integer,intent(in)::n
     end subroutine sub
  end interface

  complex,dimension(:),allocatable::a
  complex,dimension(10)::b
  integer,dimension(10)::c,d
  integer::n=10,err
  allocate(a(n))
  a=(5,10)
  b=(5,10)
  call sub(a,b,c,d,n)

  err=0
  do i=1,n
     if (c(i).eq.1.and.d(1).eq.1) err=err+1
  end do
  if (err .eq. 0) then
     print *,"OK"
  else
     print *,"NG"
  endif
end program main

subroutine sub(a,b,c,d,n)
  complex,allocatable,intent(inout)::a(:)
  complex,intent(inout)::b(n)
  integer,intent(inout)::c(n),d(n)
  integer,intent(in)::n
  !$omp parallel
  !$omp sections reduction(+:a,b)
  !$omp section
  do i=1,n
     a(i)=a(i)+cmplx(i,n)
     b(i)=b(i)+cmplx(i,n)
     if (a(i).eq.b(i)) then
        c(i)=0
     else
        c(i)=1
     end if
  end do
  !$omp section
  do i=1,n
     a(i)=a(i)+cmplx(i,i+n)
     b(i)=b(i)+cmplx(i,i+n)
     if (a(i).eq.b(i)) then
        d(i)=0
     else
        d(i)=1
     end if
  end do
  !$omp end sections
  !$omp end parallel
  return
end subroutine sub
