interface
 function ifunc01() result(irst01)
  interface
   subroutine isub01()
   end subroutine
  end interface
  procedure(isub01), pointer :: irst01
 end function

 subroutine isub02(is01_ds01)
  interface
   subroutine is01_ds01()
   end subroutine
  end interface
 end subroutine
end interface

call csub01(ifunc01)

call csub03(isub02)

contains
 function cfunc01() result(crst01)
  interface
   subroutine isub01()
   end subroutine
  end interface
  procedure(isub01), pointer :: crst01
  crst01 => isub01
 end function
 subroutine csub01(cs01_arg01)
  procedure(cfunc01) :: cs01_arg01
 end subroutine

 subroutine csub02(cs01_ds01)
  interface
   subroutine cs01_ds01()
   end subroutine
  end interface
 end subroutine

 subroutine csub03(cs03_arg01)
  procedure(csub02) :: cs03_arg01
 end subroutine
end

subroutine isub01()
end subroutine

function ifunc01() result(irst01)
 interface
  subroutine isub01()
  end subroutine
 end interface
 procedure(isub01), pointer :: irst01
end function

subroutine isub02(is01_ds01)
 interface
  subroutine is01_ds01()
  end subroutine
 end interface
end subroutine
