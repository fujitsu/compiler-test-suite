
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
  a=test(10,5)
  b=test(10,5)
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
  !$omp do firstprivate(a,b)
  do i=1,n
     a(i)%x = a(i)%x + i
     a(i)%y = a(i)%x + i + n
     b(i)%x = b(i)%x + i
     b(i)%y = b(i)%x + i + n
     if (a(i)%x.eq.b(i)%x.and.a(i)%y.eq.b(i)%y) then
        c(i)=0
     else
        c(i)=1
     end if
  end do
  !$omp end do
  !$omp end parallel
  return
end subroutine sub
