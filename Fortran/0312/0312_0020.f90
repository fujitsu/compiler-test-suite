subroutine sub8
  type TAG
     complex*8 i(2)
     complex*8 j(2)
  end type TAG
  type (TAG) st2
  parameter(st2 = TAG((/(1,-1),(2,-2)/),(/(-3,3),(-4,4)/)))
  if (st2%i(1) .ne. (1,-1)) stop 'NG1'
  if (st2%i(2) .ne. (2,-2)) stop 'NG1'
  if (st2%j(1) .ne. (-3,3)) stop 'NG1'
  if (st2%j(2) .ne. (-4,4)) stop 'NG1'
end subroutine sub8
subroutine sub16
  type TAG
     complex*16 i(2)
     complex*16 j(2)
  end type TAG
  type (TAG) st2
  parameter(st2 = TAG((/(1,-1),(2,-2)/),(/(-3,3),(-4,4)/)))
  if (st2%i(1) .ne. (1,-1)) stop 'NG1'
  if (st2%i(2) .ne. (2,-2)) stop 'NG1'
  if (st2%j(1) .ne. (-3,3)) stop 'NG1'
  if (st2%j(2) .ne. (-4,4)) stop 'NG1'
end subroutine sub16
subroutine sub32
  type TAG
     complex*32 i(2)
     complex*32 j(2)
  end type TAG
  type (TAG) st2
  parameter(st2 = TAG((/(1,-1),(2,-2)/),(/(-3,3),(-4,4)/)))
  if (st2%i(1) .ne. (1,-1)) stop 'NG1'
  if (st2%i(2) .ne. (2,-2)) stop 'NG1'
  if (st2%j(1) .ne. (-3,3)) stop 'NG1'
  if (st2%j(2) .ne. (-4,4)) stop 'NG1'
end subroutine sub32

program main

call sub8
call sub16
call sub32

print *, 'PASS'
end
