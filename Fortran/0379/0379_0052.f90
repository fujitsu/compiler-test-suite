block data block1
  common/aaa/ i1,i2,i3
  bind(C) :: /aaa/
  data i1,i2,i3 /100,200,300/
end block data
block data block2
  common/aaa/ j1,j2,j3
  data j1,j2,j3 /1000,2000,3000/
end block data

module mod01
  common/aaa/ iii1
  bind(C) :: /aaa/
  contains
  subroutine mod01sub()
    if (iii1 .ne. 100) print *,'ng1'
  end subroutine
end module mod01

subroutine sub01()
  use mod01
  common/aaa/ iii2
  common/aaa/ iii3
  bind(C) :: /aaa/
  if (iii2 .ne. 100) print *,'ng2'
  if (iii3 .ne. 200) print *,'ng3'
  call mod01sub()
end subroutine

module mod02
  common/aaa/ iii1
  contains
  subroutine mod02sub()
    if (iii1 .ne. 1000) print *,'ng4'
  end subroutine
end module mod02

subroutine sub02()
  use mod02
  common/aaa/ iii2
  common/aaa/ iii3
  if (iii2 .ne. 1000) print *,'ng5'
  if (iii3 .ne. 2000) print *,'ng6'
  call mod02sub()
end subroutine

call sub01()
call sub02()
print *,'ok'
end
