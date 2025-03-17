module test
  implicit none
  integer :: n
contains
  subroutine a
    integer :: i,j
    write(1,*)'na1=',n
    j=n
    call b(j)
    write(1,*)'na2=',n
  end subroutine a

  subroutine b(i)
    integer,intent(in) :: i
    write(1,*)'ib1=',i
    call c(i)
    write(1,*)'ib2=',i
  end subroutine b

  subroutine c(k)
    integer,intent(in) :: k
    write(1,*)'kb1=',k
    n=n+1
    write(1,*)'kb2=',k
    if (k/=2) print *,'error'
  end subroutine c
end module test

program main
  use test,only: n,a
  implicit none
  n=2
  call a
 print *,'pass'
end program main
