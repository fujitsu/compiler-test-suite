subroutine test(a,la)
  implicit none
  integer(kind=4) :: i
  logical(kind=8),dimension(1:64) :: la
  logical(kind=8) ::lb
  real(kind=8),dimension(1:64) :: a

  do i=1,64
     if (a(i) .eq. 1._8) then
        lb=.FALSE.
     else
        lb=.TRUE.
     endif
     la(i)=  lb
  enddo
end subroutine test

program main
  implicit none
  integer(kind=4) :: i
  logical(kind=8),dimension(1:64) :: la
  real(kind=8),dimension(1:64) :: a
  
  a = 1._8
  call test(a, la)
  do i=1,64
     if (la(i) .neqv. .FALSE._8) then
        print *, "NG"
     end if
  enddo
  print *, "OK"
end program main
