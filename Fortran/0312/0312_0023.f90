subroutine sub4
  type TAG
     real*4 i(2)
     real*4 j(2)
  end type TAG
  type (TAG) st2
  parameter(st2 = TAG((/1,2/),(/-3,-4/)))
  if (st2%i(1) .ne. 1) stop 'NG1'
  if (st2%i(2) .ne. 2) stop 'NG1'
  if (st2%j(1) .ne. -3) stop 'NG1'
  if (st2%j(2) .ne. -4) stop 'NG1'
end subroutine sub4
subroutine sub8
  type TAG
     real*8 i(2)
     real*8 j(2)
  end type TAG
  type (TAG) st2
  parameter(st2 = TAG((/1,2/),(/-3,-4/)))
  if (st2%i(1) .ne. 1) stop 'NG1'
  if (st2%i(2) .ne. 2) stop 'NG1'
  if (st2%j(1) .ne. -3) stop 'NG1'
  if (st2%j(2) .ne. -4) stop 'NG1'
end subroutine sub8
subroutine sub16
  type TAG
     real*16 i(2)
     real*16 j(2)
  end type TAG
  type (TAG) st2
  parameter(st2 = TAG((/1,2/),(/-3,-4/)))
  if (st2%i(1) .ne. 1) stop 'NG1'
  if (st2%i(2) .ne. 2) stop 'NG1'
  if (st2%j(1) .ne. -3) stop 'NG1'
  if (st2%j(2) .ne. -4) stop 'NG1'
end subroutine sub16

program main

call sub4
call sub8
call sub16

print *, 'PASS'
end
