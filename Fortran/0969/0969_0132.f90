module mod01
 type m01_ty01
  integer :: m01_t01_i01
 end type
  contains
   function m01_func01() result(m01_rst01)
    integer :: m01_rst01
    m01_rst01 = 1
   end function
   subroutine m01_sub01(m01_s01_arg01)
    interface m01_ty01
     module procedure m01_func01
    end interface
    type (m01_ty01) :: m01_s01_arg01
   end subroutine
end module

end
