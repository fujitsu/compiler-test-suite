
module testtype
  type test
     integer::x,y
  end type test
end module testtype

program main
  use testtype
  interface
     subroutine sub(a,b,c,n)
       use testtype
       type(test),allocatable,intent(inout)::a(:)
       type(test),intent(inout)::b(n)
       integer,intent(inout)::c(n)
       integer,intent(in)::n
     end subroutine sub
  end interface

  type(test),dimension(:),allocatable::a
  type(test),dimension(10)::b
  integer,dimension(10)::c
  integer::n=10,err
  allocate(a(n))
  a=test(5,10)
  b=test(5,10)
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
  use testtype
  type(test),allocatable,intent(inout)::a(:)
  type(test),intent(inout)::b(n)
  integer,intent(inout)::c(n)
  integer,intent(in)::n
  !$omp parallel
  !$omp single private(a,b)
  do i=1,n
     a(i)=test(i,n)
     b(i)=test(i,n)
     if (a(i)%x.eq.b(i)%x.and.a(i)%y.eq.b(i)%y) then
        c(i)=0
     else
        c(i)=1
     end if
  end do
  !$omp end single
  !$omp end parallel
  return
end subroutine sub
