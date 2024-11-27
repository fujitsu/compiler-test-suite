use, intrinsic :: iso_c_binding
 interface isub
  subroutine isub01(is01_arg01)
   use, intrinsic :: iso_c_binding
   type (c_ptr) :: is01_arg01
  end subroutine
 end interface
 type (c_ptr) :: cptr
 call isub(cptr)
end

subroutine isub01(is01_arg01)
 use, intrinsic :: iso_c_binding
 type (c_ptr) :: is01_arg01
end subroutine
