subroutine sub1
  type TAG
     integer*1 i(2)
     integer*1 j(2)
  end type TAG
  type (TAG) st2
  parameter(st2 = TAG((/1,2/),(/1,2/)))
  if (st2%i(1) .ne. 1) stop 'NG1'
  if (st2%i(2) .ne. 2) stop 'NG1'
  if (st2%j(1) .ne. 1) stop 'NG1'
  if (st2%j(2) .ne. 2) stop 'NG1'
end subroutine sub1
subroutine sub2
  type TAG
     integer*2 i(2)
     integer*2 j(2)
  end type TAG
  type (TAG) st2
  parameter(st2 = TAG((/1,2/),(/1,2/)))
  if (st2%i(1) .ne. 1) stop 'NG1'
  if (st2%i(2) .ne. 2) stop 'NG1'
  if (st2%j(1) .ne. 1) stop 'NG1'
  if (st2%j(2) .ne. 2) stop 'NG1'
end subroutine sub2
subroutine sub4
  type TAG
     integer*4 i(2)
     integer*4 j(2)
  end type TAG
  type (TAG) st2
  parameter(st2 = TAG((/1,2/),(/1,2/)))
  if (st2%i(1) .ne. 1) stop 'NG1'
  if (st2%i(2) .ne. 2) stop 'NG1'
  if (st2%j(1) .ne. 1) stop 'NG1'
  if (st2%j(2) .ne. 2) stop 'NG1'
end subroutine sub4
subroutine sub8
  type TAG
     integer*8 i(2)
     integer*8 j(2)
  end type TAG
  type (TAG) st2
  parameter(st2 = TAG((/1,2/),(/1,2/)))
  if (st2%i(1) .ne. 1) stop 'NG1'
  if (st2%i(2) .ne. 2) stop 'NG1'
  if (st2%j(1) .ne. 1) stop 'NG1'
  if (st2%j(2) .ne. 2) stop 'NG1'
end subroutine sub8

program main

call sub1
call sub2
call sub4
call sub8

print *, 'PASS'
end
