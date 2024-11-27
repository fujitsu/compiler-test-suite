integer, parameter :: i01 = iachar('4',4)

contains
 subroutine csub01(cs01_arg01)
  integer :: cs01_arg01
  character(cs01_arg01) :: ss01
  integer(kind = 4         ) :: ii02(cs01_arg01)
  namelist /aaa/ii02
 end subroutine

end
