module sub
  integer(kind=4) irc1,irc2,irc3,irc4
  integer(kind=4) irc5,irc6,irc7,irc8
  integer, parameter :: N=10
  integer, dimension(1:N) :: a
  real, dimension(1:N)    :: r
  common /com/ok
  logical ok
end module

program main
  common /com/ok
  logical ok

  call test1()

  call test2()

  call test3()

  if (ok) then
    print *,"OK"
  endif
end program

subroutine test1()
  use sub

  a = 0
  r = 0
  irc1 = 2
  irc2 = 9
  irc3 = 2
  irc4 = 9
  irc5 = 3
  irc6 = 10
  irc7 = 3
  irc8 = 10

  a(irc1:irc2) = a(irc3:irc4) + 1
  r(irc5:irc6) = r(irc7:irc8) + 1

  if (sum(a)==sum(r)) then
    ok = .true.
  else
    ok = .false.
    print *,"TEST1-NG : ",sum(a),sum(r)
  endif
end subroutine

subroutine test2()
  use sub

  a = 0
  r = 0
  irc1 = 2
  irc2 = 9
  irc3 = 3
  irc4 = 10
  irc5 = 1
  irc6 = 8
  irc7 = 3
  irc8 = 10

  a(irc1:irc2) = a(irc3:irc4) + 1
  r(irc5:irc6) = r(irc7:irc8) + 1

  if (sum(a)==sum(r)) then
    ok = .true.
  else
    ok = .false.
    print *,"TEST1-NG : ",sum(a),sum(r)
  endif
end subroutine

subroutine test3()
  use sub

  a = 0
  r = 0
  irc1 = 3
  irc2 = 10
  irc3 = 1
  irc4 = 8
  irc5 = 2
  irc6 = 9
  irc7 = 1
  irc8 = 8

  a(irc1:irc2) = a(irc3:irc4) + 1
  r(irc5:irc6) = r(irc7:irc8) + 1

  if (sum(a)==sum(r)) then
    ok = .true.
  else
    ok = .false.
    print *,"TEST1-NG : ",sum(a),sum(r)
  endif
end subroutine
