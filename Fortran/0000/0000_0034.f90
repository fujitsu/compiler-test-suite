!
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

  integer*4 m,ans
  parameter (m=20,ans=-20)
  if (-m .ne. ans) then
    ok = .false.
    print *,"TEST1-NG =>",-m
  endif
end subroutine

subroutine test2
  common /com/ok
  logical(kind=1) ok

  integer*2 m,ans
  parameter (m=20,ans=-20)
  if (-m .ne. ans) then
    ok = .false.
    print *,"TEST1-NG =>",-m
  endif
end subroutine

subroutine test3
  common /com/ok
  logical(kind=1) ok

  integer*1 m,ans
  parameter (m=20,ans=-20)
  if (-m .ne. ans) then
    ok = .false.
    print *,"TEST1-NG =>",-m
  endif
end subroutine
