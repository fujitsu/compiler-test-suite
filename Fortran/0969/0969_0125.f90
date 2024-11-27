 

module mod01
 type m01_ty01
  real :: m01_t01_r01, m01_t01_r02
  contains
   procedure, nopass :: m01_t01_func01 => m01_func01
 end type
 contains
  function m01_func01(m01_f01_arg01, m01_f01_arg02) result(m01_rst01)
   class(m01_ty01), intent(in) :: m01_f01_arg01, m01_f01_arg02
   real                        :: m01_rst01
   m01_rst01 = sqrt((m01_f01_arg01%m01_t01_r01 - m01_f01_arg02%m01_t01_r01)**2 + (m01_f01_arg01%m01_t01_r02 - m01_f01_arg02%m01_t01_r02)**2)
  end function
end module

call sub02()
call sub06()

end

subroutine sub04()
 use mod01
 type(m01_ty01) :: m01_t01_01
 type ty04
  
 end type
end subroutine

subroutine sub05()
 use mod01
 procedure(), pointer :: p01
 type (m01_ty01) :: m01_t01_01
end subroutine

subroutine sub06()
 use mod01
 type m01_t01_func01
  integer :: i01
 end type
 type (m01_ty01) :: m01_t01_01
 print *,m01_t01_01%m01_t01_func01(m01_ty01(1.0, 2.0), m01_ty01(3.0, 4.0))
 print *,m01_t01_func01(1)
end subroutine

subroutine sub01()
 interface ifunc
  function ifunc01() result(irst01)
   integer :: irst01
  end function
 end interface

 type ifunc 
  integer :: i01
 end type

end subroutine

subroutine sub02()
 use mod01
 type (m01_ty01) :: m01_t01_01
 print *,m01_t01_01%m01_t01_func01(m01_ty01(1.0, 2.0), m01_ty01(3.0, 4.0))
end subroutine

subroutine sub03()
 use mod01
 type ty03
  integer :: t03_i01
  contains
   procedure, nopass :: t03_func01 => m01_func01 
 end type
end subroutine
