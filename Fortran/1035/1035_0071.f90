module test
  implicit none
  integer :: n
contains
  subroutine a
    integer :: i,j
    write(46,*)'na1=',n
    j=n
    call b(j)
    write(46,*)'na2=',n
  end subroutine a

  subroutine b(i)
    integer,intent(in) :: i
    write(46,*)'ib1=',i
    call c(i)
    write(46,*)'ib2=',i
  end subroutine b

  subroutine c(k)
    integer,intent(in) :: k
    write(46,*)'kb1=',k
    n=n+1
    write(46,*)'kb2=',k
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
