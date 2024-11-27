module mod01
 type mty01
  integer :: mi01
 end type
end module

module mod02
 interface
  function mifunc01() result(mirst01)
   use mod01
   type (mty01) :: mirst01
  end function
 end interface
end module

module mod03
 use mod02
 type mty03
  procedure(mifunc01), pointer, nopass :: pmifuncp01
 end type
end module

end
