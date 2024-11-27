use , intrinsic :: iso_c_binding

interface c_loc
 subroutine isub01()
 end subroutine
 subroutine isub02(i01, i02)
  integer :: i01, i02
 end subroutine
end interface

call c_loc()
call c_loc(1, 2)

end

subroutine isub01()
end subroutine
subroutine isub02(i01, i02)
 integer :: i01, i02
end subroutine
