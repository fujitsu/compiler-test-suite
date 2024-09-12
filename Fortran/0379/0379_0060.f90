block data aaa
  common /com/i1
  data i1 /100/
end block data
block data bbb
  common /com/i2
  bind(C) :: /com/
  data i2 /200/
end block data

module mod
  common /com/i1
end module

use mod
  common /com/ i2
  bind(C) :: /com/
  if ( i1 .ne. 100) print *,'ng'
  if ( i2 .ne. 200) print *,'ng'
  print *,'ok'
end
