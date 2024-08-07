  common /com/ok
  logical(kind=1) ok
  ok = .true.

  call test1
  call test2
  call test3

  if (ok) then
    print *,"OK"
  endif

stop
end

subroutine test1
  common /com/ok
  logical(kind=1) ok
  integer*4 m,d,ans
  parameter (m=19,d=3,ans=1)

  if (mod(m,d) .ne. ans) then
    ok = .false.
    print *,"TEST1-NG =>",mod(m,d)
  endif
end subroutine

subroutine test2
  common /com/ok
  logical(kind=1) ok
  integer*2 m,d,ans
  parameter (m=19,d=3,ans=1)

  if (mod(m,d) .ne. ans) then
    ok = .false.
    print *,"TEST2-NG =>",mod(m,d)
  endif
end subroutine

subroutine test3
  common /com/ok
  logical(kind=1) ok
  integer*1 m,d,ans
  parameter (m=19,d=3,ans=1)

  if (mod(m,d) .ne. ans) then
    ok = .false.
    print *,"TEST3-NG =>",mod(m,d)
  endif
end subroutine
