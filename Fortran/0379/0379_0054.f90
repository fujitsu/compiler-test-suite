block data
  common /com/ iii
  bind(C) :: /com/
  data iii /100/
end block data
module mod01
  common /com/ iii
  bind(C) :: /com/
  contains
  subroutine mod01sub()
    if ( iii .ne. 100) print *,'ng2'
  end subroutine
end module
module mod02
  use mod01
  bind(C) :: /com/
  common /com/ jjj
  contains
  subroutine mod02sub()
    if ( jjj .ne. 100) print *,'ng1'
    call mod01sub()
  end subroutine
end module

use mod02
call mod02sub()
print *,'ok'
end
