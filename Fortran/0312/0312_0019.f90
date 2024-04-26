subroutine sub1
  type TAG
     character*1 i(2)
     character*1 j(2)
  end type TAG
  type (TAG) st2
  parameter(st2 = TAG((/"A", "CD"/),(/"EF","g"/)))
  if (st2%i(1) .ne. "A") stop 'NG1'
  if (st2%i(2) .ne. "C") stop 'NG2'
  if (st2%j(1) .ne. "E") stop 'NG3'
  if (st2%j(2) .ne. "g") stop 'NG4'
end subroutine sub1
subroutine sub4
  type TAG
     character*4 i(2)
     character*4 j(2)
  end type TAG
  type (TAG) st2
  parameter(st2 = TAG((/"A", "CD"/),(/"EF","g"/)))
  if (st2%i(1) .ne. "A") stop 'NG1'
  if (st2%i(2) .ne. "CD") stop 'NG1'
  if (st2%j(1) .ne. "EF") stop 'NG1'
  if (st2%j(2) .ne. "g") stop 'NG1'
end subroutine sub4
subroutine sub8
  type TAG
     character*8 i(2)
     character*8 j(2)
  end type TAG
  type (TAG) st2
  parameter(st2 = TAG((/"A", "CD"/),(/"EF","g"/)))
  if (st2%i(1) .ne. "A") stop 'NG1'
  if (st2%i(2) .ne. "CD") stop 'NG1'
  if (st2%j(1) .ne. "EF") stop 'NG1'
  if (st2%j(2) .ne. "g") stop 'NG1'
end subroutine sub8

program main

call sub1
call sub4
call sub8

print *, 'PASS'
end
