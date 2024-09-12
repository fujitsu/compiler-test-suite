block data blk1
  bind(c) :: /aaa/
  common/aaa/ i1
  data i1 /100/
end block data
block data blk2
  common/aaa/ i1
  data i1 /200/
end block data

module mod01
  bind(c) :: /aaa/
  common/aaa/ i1
  contains
  subroutine sub()
    if ( i1 .ne. 100) print *,'ng'
  end subroutine
end module mod01

subroutine bbb()
  use mod01
  common/aaa/ i2
  if ( i2 .ne. 200) print *,'ng'
end subroutine

use mod01
call sub()
call bbb()
print *,'ok'
end
