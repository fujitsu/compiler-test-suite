module mod01
 interface
  subroutine m01isub01()
  end subroutine
 end interface
 contains

  function m01func01() result(m01rst01)
   interface
    subroutine isub01()
    end subroutine
   end interface
   procedure(isub01), pointer :: m01rst01
   m01rst01 => isub01
  end function

  function m01func02() result(m01rst02)
   procedure(m01isub01), pointer :: m01rst02
   m01rst02 => m01isub01
  end function

end module

use mod01

call csub01(m01func01)
call csub02(m01func01)

call csub01(m01func02)
call csub02(m01func02)

contains

 subroutine csub01(cs01_df01)
  interface
   function cs01_df01() result(cs01_drst01)
    interface
     subroutine isub01()
     end subroutine
    end interface
    procedure(isub01), pointer :: cs01_drst01
   end function
  end interface
 end subroutine

 subroutine csub02(cs02_df01)
  interface
   function ifunc01() result(irst01)
    interface
     subroutine isub01()
     end subroutine
    end interface
    procedure(isub01), pointer :: irst01
   end function
  end interface
  procedure(ifunc01) :: cs02_df01
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

subroutine m01isub01()
end subroutine

subroutine isub01()
end subroutine
