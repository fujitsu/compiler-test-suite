
program main
  interface
     subroutine sub(a,b,c,n)
       complex,allocatable,intent(inout)::a(:)
       complex,intent(inout)::b(n)
       integer,intent(inout)::c(n)
       integer,intent(in)::n
     end subroutine sub
  end interface

  complex,dimension(:),allocatable::a
  complex,dimension(10)::b
  integer,dimension(10)::c
  integer::n=10,err
  allocate(a(n))
  a=(5,10)
  b=(5,10)
  call sub(a,b,c,n)

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

subroutine sub(a,b,c,n)
  complex,allocatable,intent(inout)::a(:)
  complex,intent(inout)::b(n)
  integer,intent(inout)::c(n)
  integer,intent(in)::n
  !$omp parallel
  !$omp single private(a,b)
  do i=1,n
     a(i)=cmplx(i,n)
     b(i)=cmplx(i,n)
     if (a(i).eq.b(i)) then
        c(i)=0
     else
        c(i)=1
     end if
  end do
  !$omp end single
  !$omp end parallel
  return
end subroutine sub
