module mod01
 use ,intrinsic :: iso_c_binding
 public  :: m01_func
 private :: m01_func01
 interface m01_func
  module procedure m01_func01
 end interface m01_func
 type m01_ty01
  integer :: ii01
 end type
 contains
  function m01_func01(m01_f01_arg01, m01_f01_df01) result(m01_rst01)
   interface
    function m01_f01_df01(m01_f01_df01_arg01) result(m01_f01_drst01) bind(c)
     import :: c_ptr
     implicit none
     type(c_ptr), value, intent(in) :: m01_f01_df01_arg01
     type(c_ptr)                    :: m01_f01_drst01
    end function
   end interface
   type(m01_ty01), intent(inout) :: m01_f01_arg01
   type(m01_ty01)                :: m01_rst01
   m01_rst01 = m01_f01_arg01
  end function
end module

function func01(f01_arg01, f01_df01) result(rst01)
 use mod01
 implicit none
 interface
  function f01_df01(f01_df01_arg01) result(f01_drst01) bind(c)
   import :: c_ptr
   implicit none
   type(c_ptr), value,  intent(in) :: f01_df01_arg01
   type(c_ptr)                     :: f01_drst01
  end function f01_df01
 end interface
 type ty01
  type(m01_ty01) :: m01_ty01_01
 end type
 type(ty01),  intent(inout) :: f01_arg01
 type(m01_ty01)             :: rst01
 rst01 = m01_func(f01_arg01%m01_ty01_01, f01_df01)
end function

end
