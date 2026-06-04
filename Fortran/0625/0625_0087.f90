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

 function m01_func03(m01_f03_df01) result(m01_rst03)
  procedure(m01_func01), pointer :: m01_f03_df01
  procedure(m01_func01), pointer :: m01_rst03
  m01_rst03 => m01_f03_df01
 end function

 function m01_func04(m01_f04_df01) result(m01_rst04)
  procedure(m01_func01), pointer :: m01_f04_df01
  procedure(m01_func02), pointer :: m01_rst04
  m01_rst04 => m01_f04_df01()
 end function

 function m01_func05(m01_f05_df01) result(m01_rst05)
  procedure(m01_func02), pointer :: m01_f05_df01
  procedure(m01_sub01),  pointer :: m01_rst05
  m01_rst05 => m01_f05_df01()
 end function

 subroutine m01_sub02(m01_s02_ds01)
  procedure(m01_sub01), pointer :: m01_s02_ds01
  call m01_s02_ds01()
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

procedure(m01_func01), pointer :: pm01_func01p01
pm01_func01p01 => m01_func01

call m01_sub02(m01_func05(m01_func04(m01_func03(pm01_func01p01))))

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

 function cfunc03(cf03_df01) result(crst03)
  procedure(cfunc01), pointer :: cf03_df01
  procedure(cfunc01), pointer :: crst03
  crst03 => cf03_df01
 end function

 function cfunc04(cf04_df01) result(crst04)
  procedure(cfunc01), pointer :: cf04_df01
  procedure(cfunc02), pointer :: crst04
  crst04 => cf04_df01()
 end function

 function cfunc05(cf05_df01) result(crst05)
  procedure(cfunc02), pointer :: cf05_df01
  procedure(csub01),  pointer :: crst05
  crst05 => cf05_df01()
 end function

 subroutine csub02(cs02_ds01)
  procedure(csub01), pointer :: cs02_ds01
  call cs02_ds01()
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
