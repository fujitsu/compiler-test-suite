block data
  common/com/kkk
  bind(C) :: /com/
  data kkk /100/
end blockdata
module mod01 
  common /com/ iii
  bind(C) :: /com/
end module
use mod01
bind(C) :: /com/
common /com/ jjj
if ( 100 .ne. jjj) print *,'ng'
print *,'ok'
end
