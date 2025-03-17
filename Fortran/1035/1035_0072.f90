module test
  implicit none
  integer :: n
contains
  subroutine a
    integer :: j
    if (n/=2)print *,'error','na1=',n
    j=n
    call b(j)
    if (n/=3)print *,'error','na2=',n
  end subroutine a

  subroutine b(i)
    integer,intent(in) :: i
    if (i/=2)print *,'Error ib1=',i
    call c(i)
    if (i/=2)print *,'Error ib2=',i
  end subroutine b

  subroutine c(k)
    integer,intent(in) :: k
    if (loc(k)==loc(n))print *,'Error invalid address'
    if (k/=2)print *,'Error kb1=',k
    n=n+1
    if (k/=2)print *,'Error kb2=',k
  end subroutine c
end module test

program main
  use test,only: n,a
  implicit none
  n=2
  call a
print *,'pass'
end program main
