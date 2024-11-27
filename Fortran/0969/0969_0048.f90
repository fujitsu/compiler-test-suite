module mod01
 type ggggggggg
  private
   complex(kind = 4) :: ggg_01
   logical(kind = 4) :: ggg_02
 end type
 interface ggggggggg
  module procedure mfun
 end interface
 contains
  type(ggggggggg) function mfun(ggg_01, ggg_02) result(res)
   integer (kind = 4), intent(in)           :: ggg_01
   logical (kind = 4), intent(in), optional :: ggg_02
   res%ggg_01 = cmplx(ggg_01, ggg_01 + ggg_01)
   res%ggg_02 = present(ggg_02)
  end function
  subroutine m01_sub01(m01_s01_arg01)
   type(ggggggggg), intent(in) :: m01_s01_arg01
   print *,m01_s01_arg01
  end subroutine
end module

program main
 use mod01
 type (ggggggggg) :: type_gn01_01
 type_gn01_01 = ggggggggg(444_4)
 type_gn01_01 = ggggggggg(444_4, .true.)
 type_gn01_01 = ggggggggg(444_4, ggg_02 = .true.)
 type_gn01_01 = ggggggggg(ggg_01 = 444_4, ggg_02 = .true.)
 type_gn01_01 = ggggggggg(ggg_02 = .true., ggg_01 = 444_4)
 call m01_sub01(type_gn01_01)
end program main
