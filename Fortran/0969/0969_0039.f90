module mod
 use ,intrinsic :: iso_c_binding
 public  :: m01_sub
 private :: m01_sub01
 interface m01_sub
  module procedure m01_sub01
 end interface m01_sub
 type m01_ty01
  integer :: ii01
 end type
 contains
  subroutine m01_sub01(m01_s01_arg01, m01_s01_ds01)
   type(m01_ty01), intent(inout) :: m01_s01_arg01
   interface
    subroutine m01_s01_ds01( m01_s01_ds01_arg01 ) bind(c)
     import :: c_ptr
     implicit none
     type(c_ptr), value, intent(in) :: m01_s01_ds01_arg01
    end subroutine m01_s01_ds01
   end interface
  end subroutine
  subroutine m01_sub02( m01_s02_arg01 ) bind(c)
   use, intrinsic :: iso_c_binding
   implicit none
   type(c_ptr), value,  intent(in)    :: m01_s02_arg01
  end subroutine m01_sub02
end module

subroutine sub01( s01_arg01, s01_ds01)
 use mod
 implicit none
 type ty01
  type(m01_ty01) :: m01_ty01_01
 end type
 type(ty01),  intent(inout) :: s01_arg01
 interface
  subroutine s01_ds01( s01_ds01_arg01 ) bind(c)
   import :: c_ptr
   implicit none
   type(c_ptr), value,  intent(in)    :: s01_ds01_arg01
  end subroutine s01_ds01

  subroutine s01_ds02( s01_ds02_arg01 ) bind(c)
   use, intrinsic :: iso_c_binding
   implicit none
   type(c_ptr), value,  intent(in)    :: s01_ds02_arg01
  end subroutine s01_ds02

 end interface
 call sub02( s01_arg01%m01_ty01_01, s01_ds01)
 contains
  subroutine csub01(cs01_ds01_arg01)
   implicit none
   type(c_ptr), value,  intent(in)    :: cs01_ds01_arg01
  end subroutine
end subroutine

end

subroutine s01_ds02( s01_ds02_arg01 ) bind(c)
   use, intrinsic :: iso_c_binding
 implicit none
 type(c_ptr), value,  intent(in)    :: s01_ds02_arg01
end subroutine s01_ds02

subroutine sub02(m01_s01_arg01, m01_s01_ds01)
 use mod
 type(m01_ty01), intent(inout) :: m01_s01_arg01
 interface
  subroutine m01_s01_ds01( m01_s01_ds01_arg01 ) bind(c)
   import :: c_ptr
   implicit none
   type(c_ptr), value, intent(in) :: m01_s01_ds01_arg01
  end subroutine m01_s01_ds01
 end interface
end subroutine
