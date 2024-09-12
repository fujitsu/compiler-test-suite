block data
  common /com/ iii
  bind(C) :: /com/
  data iii/100/
end blockdata
module mod
  common /com/ iii
  bind(C) :: /com/
end module
module mod1
  use mod
  bind(C) :: /com/
  common /com/ jjj
  contains 
  subroutine sub()
   if ( iii .ne. jjj) print *,'ng'
  print *,'ok'
  end subroutine
end module
use mod1
call sub()
if ( iii .ne. jjj) print *,'ng'
end
