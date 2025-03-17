
program main
  interface
    subroutine sub(a,b,c,n)
      integer,allocatable,intent(inout)::a(:)
      integer,intent(inout)::b(n)
      integer,intent(inout)::c(n)
      integer,intent(in)::n
    end subroutine sub
  end interface

  integer,dimension(:),allocatable::a
  integer,dimension(5)::b
  integer,dimension(5)::c
  integer::n=5,err
  allocate(a(n))
  a=n
  b=n
  call sub(a,b,c,n)

  err=0
  do i=1,n
     if (c(i).eq.1) err=err +1
  end do
  if (err.eq.0) then
     print *,"OK"
  else
     print *,"NG"
  endif
end program main

subroutine sub(a,b,c,n)
  integer,allocatable,intent(inout)::a(:)
  integer,intent(inout)::b(n)
  integer,intent(inout)::c(n)
  integer,intent(in)::n
  !$omp parallel reduction(+:a,b)
  do i=1,n
     a(i)=a(i)+i
     b(i)=b(i)+i
     if (a(i).eq.b(i)) then
        c(i)=0
     else
        c(i)=1
     end if
  end do
  !$omp end parallel
  return
end subroutine sub
