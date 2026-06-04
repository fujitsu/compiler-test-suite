module mod01
 contains
  function m01_func01() result(m01_rst01)
   procedure(m01_func02), pointer :: m01_rst01
   m01_rst01 => m01_func02
  end function
  function m01_func02() result(m01_rst02)
   procedure(m01_sub01), pointer :: m01_rst02
   m01_rst02 => m01_sub01
  end function
  subroutine m01_sub01()
   print *,'pass'
  end subroutine
end module

use mod01

interface
 function ifunc01() result(irst01)
  interface
   function ifunc02() result(irst02)
    interface
     subroutine isub01()
     end subroutine
    end interface
    procedure(isub01), pointer :: irst02
   end function
  end interface
  procedure(ifunc02), pointer :: irst01
 end function

 function ifunc02() result(irst02)
  interface
   subroutine isub01()
   end subroutine
  end interface
  procedure(isub01), pointer :: irst02
 end function

 subroutine isub01()
 end subroutine

end interface

procedure(cfunc01),    pointer :: pcfunc01p01
procedure(m01_func02), pointer :: pm01_func02p01
procedure(isub01),     pointer :: pisub01p01

pcfunc01p01    => m01_func01
pm01_func02p01 => pcfunc01p01()
pisub01p01     => pm01_func02p01()

call pisub01p01()

contains
 function cfunc01() result(crst01)
  procedure(cfunc02), pointer :: crst01
  crst01 => ifunc02
 end function

 function cfunc02() result(crst02)
  procedure(csub01), pointer :: crst02
  crst02 => isub01
 end function

 subroutine csub01()
  print *,'not pass'
 end subroutine

end

function ifunc01() result(irst01)
 interface
  function ifunc02() result(irst02)
   interface
    subroutine isub01()
    end subroutine
   end interface
   procedure(isub01), pointer :: irst02
  end function
 end interface
 procedure(ifunc02), pointer :: irst01
 irst01 => ifunc02
end function

function ifunc02() result(irst02)
 interface
  subroutine isub01()
  end subroutine
 end interface
 procedure(isub01), pointer :: irst02
 irst02 => isub01
end function

subroutine isub01()
 print *,'not pass'
end subroutine
