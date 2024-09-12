block data aaa
  common /com/ i1
  data i1 /10/
end block data
block data bbb
  common /com/ i1
  bind(C) :: /com/
  data i1 /1000/
end block data
module mod
  common /com/ i1
  bind(C) :: /com/
end module
use mod
common /com/i2
bind(C) :: /com/
if (i1 .ne. 1000) print *,'ng'
if (i2 .ne. 1000) print *,'ng'
print *,'ok'
end
