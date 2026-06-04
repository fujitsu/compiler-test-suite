module mod01
 interface
  subroutine m01isub01()
  end subroutine
 end interface
 contains
  function m01func01() result(m01rst01)
   procedure(m01isub01), pointer :: m01rst01
   m01rst01 => m01isub01
  end function

  subroutine m01sub01(m01s01_df01)
   procedure(m01func01) :: m01s01_df01
  end subroutine

end module

use mod01

interface
 subroutine isub01()
 end subroutine
 function ifunc01() result(irst01)
  interface
   subroutine isub01()
   end subroutine
  end interface
  procedure(isub01), pointer :: irst01
 end function
 subroutine isub02(is02_arg01)
  interface
   function ifunc01() result(irst01)
    interface
     subroutine isub01()
     end subroutine
    end interface
    procedure(isub01), pointer :: irst01
   end function
  end interface
  procedure(ifunc01) :: is02_arg01
 end subroutine
end interface

call m01sub01(m01func01)
call isub02(ifunc01)
call csub01(ifunc01)

print *,'pass'

contains
 function cfunc01() result(crst01)
  procedure(isub01), pointer :: crst01
  crst01 => isub01
 end function

 subroutine csub01(cs01_df01)
  procedure(cfunc01) :: cs01_df01
 end subroutine
end

subroutine m01isub01()
end subroutine

subroutine isub01()
end subroutine

function ifunc01() result(irst01)
 interface
  subroutine isub01()
  end subroutine
 end interface
 procedure(isub01), pointer :: irst01
 irst01 => isub01
end function

subroutine isub02(is02_arg01)
 interface
  function ifunc01() result(irst01)
   interface
    subroutine isub01()
    end subroutine
   end interface
   procedure(isub01), pointer :: irst01
  end function
 end interface
 procedure(ifunc01) :: is02_arg01
end subroutine
