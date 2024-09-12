block data
  integer :: iii,jjj
  common /com/ iii,jjj
  bind(C,name="abc") :: /com/
end block data

module mod01
  integer :: iii,jjj
  common /com/ iii,jjj
  bind(C,name="abc") :: /com/
end module

module mod02
  use mod01
  integer :: kkk,lll
  common /com/ kkk,lll
  bind(C,name="cde") :: /com/
end module

program main
common/com/ iii,jjj
 bind(C,name="abc") :: /com/
print *,'ok'
end
