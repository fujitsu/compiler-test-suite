interface
 function ifunc01() result(irst01)
  interface
   subroutine isub01()
   end subroutine
  end interface
  procedure(isub01), pointer :: irst01
 end function
 subroutine isub01()
 end subroutine
end interface

procedure(cfunc01), pointer          :: pcfuncp01

type ty01
 procedure(cfunc01), pointer, nopass :: pcfuncp01
end type

type (ty01) :: tt01

pcfuncp01 => ifunc01
pcfuncp01 => tt01%pcfuncp01
pcfuncp01 => cfunc02()

tt01 = ty01(ifunc01)
tt01 = ty01(tt01%pcfuncp01)
tt01 = ty01(cfunc02())

tt01%pcfuncp01 => ifunc01
tt01%pcfuncp01 => tt01%pcfuncp01
tt01%pcfuncp01 => cfunc02()

call csub01(ifunc01)
call csub01(tt01%pcfuncp01)
call csub01(cfunc02())

call csub02(ifunc01)
call csub02(tt01%pcfuncp01)
call csub02(cfunc02())

contains

function cfunc01() result(crst01)
 interface
  subroutine isub01()
  end subroutine
 end interface
 procedure(isub01), pointer :: crst01
 crst01 => isub01
end function

function cfunc02() result(crst02)
 procedure(ifunc01), pointer :: crst02
 crst02 => ifunc01
end function

subroutine csub01(cs01_arg01)
 procedure(cfunc01) :: cs01_arg01
end subroutine

subroutine csub02(cs02_df01)
 interface
  function cs02_df01() result(cs02_drst01)
   interface
    subroutine isub01()
    end subroutine
   end interface
   procedure(isub01), pointer :: cs02_drst01
  end function
 end interface
end subroutine

end

function ifunc01() result(irst01)
 interface
  subroutine isub01()
  end subroutine
 end interface
 procedure(isub01), pointer :: irst01
 irst01 => isub01
end function

subroutine isub01()
end subroutine
