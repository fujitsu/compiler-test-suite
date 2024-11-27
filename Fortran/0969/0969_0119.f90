

contains
 subroutine csub01(cs01_df01,cs01_df02)
  interface ty01
   function cs01_df01() result(cs01_drst01)
    integer :: cs01_drst01
   end function
   function cs01_df02(cs01_df02_arg01, cs01_df02_arg02) result(cs01_drst02)
    integer :: cs01_df02_arg01
    integer :: cs01_df02_arg02
    integer :: cs01_drst02
   end function
  end interface
  type ty01
   integer :: i01
  end type
  i = cs01_df01() + ty01() + ty01(1, 2)
 end subroutine
end
