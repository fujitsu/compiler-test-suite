block data block1
  common /com/ iii
  bind(C,name="aaa") :: /com/
  data iii /100/
end block data
block data block2
  common /com/ jjj
  bind(C,name="bbb") :: /com/
  data jjj /200/
end block data

module mod
  common /com/ iii
  bind(C,name="aaa") :: /com/
end module
module mod1
  use mod
  common /com/ jjj
  bind(C,name="bbb") :: /com/
end module
use mod1
if (iii .ne. 100) print *,'ng'
if (jjj .ne. 200) print *,'ng'
print *,'ok'
end
