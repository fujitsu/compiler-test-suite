subroutine sub1
  type TAG
     logical*1 i(2)
     logical*1 j(2)
  end type TAG
  type (TAG) st2
  parameter(st2 = TAG((/.true.,.false./),(/.true.,.false./)))
  if (.not. st2%i(1)) stop 'NG1'
  if (st2%i(2)) stop 'NG1'
  if (.not. st2%j(1)) stop 'NG1'
  if (st2%j(2)) stop 'NG1'
end subroutine sub1
subroutine sub2
  type TAG
     logical*2 i(2)
     logical*2 j(2)
  end type TAG
  type (TAG) st2
  parameter(st2 = TAG((/.true.,.false./),(/.true.,.false./)))
  if (.not. st2%i(1)) stop 'NG1'
  if (st2%i(2)) stop 'NG1'
  if (.not. st2%j(1)) stop 'NG1'
  if (st2%j(2)) stop 'NG1'
end subroutine sub2
subroutine sub4
  type TAG
     logical*4 i(2)
     logical*4 j(2)
  end type TAG
  type (TAG) st2
  parameter(st2 = TAG((/.true.,.false./),(/.true.,.false./)))
  if (.not. st2%i(1)) stop 'NG1'
  if (st2%i(2)) stop 'NG1'
  if (.not. st2%j(1)) stop 'NG1'
  if (st2%j(2)) stop 'NG1'
end subroutine sub4
subroutine sub8
  type TAG
     logical*8 i(2)
     logical*8 j(2)
  end type TAG
  type (TAG) st2
  parameter(st2 = TAG((/.true.,.false./),(/.true.,.false./)))
  if (.not. st2%i(1)) stop 'NG1'
  if (st2%i(2)) stop 'NG1'
  if (.not. st2%j(1)) stop 'NG1'
  if (st2%j(2)) stop 'NG1'
end subroutine sub8

program main

call sub1
call sub2
call sub4
call sub8

print *, 'PASS'
end
