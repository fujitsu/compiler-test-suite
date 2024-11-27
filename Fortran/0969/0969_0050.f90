module mod01
 type generate_name01
  character(4) :: gn01_c401 = ''
 end type
 interface generate_name01
  module procedure m01_func01, m01_func02
 end interface
 contains
  function m01_func01(m01_f01_arg01) result(m01_rst01)
   logical, intent(in)    :: m01_f01_arg01
   type (generate_name01) :: m01_rst01
   if (m01_f01_arg01) m01_rst01%gn01_c401 = 'pass'
  end function
  function m01_func02(m01_f02_arg01) result(m01_rst02)
   type (generate_name01), intent(in) :: m01_f02_arg01
   logical                            :: m01_rst02
   m01_rst02 = len_trim(m01_f02_arg01%gn01_c401).eq.0
  end function
end module

use mod01

print *,generate_name01(generate_name01(generate_name01()))

end
