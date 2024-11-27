subroutine sub01(s01_df01, s01_df02)
 interface
  function s01_df01(s01_df01_ds01) result(s01_drst01)
   interface
    subroutine s01_df01_ds01()
    end subroutine
   end interface
   procedure(s01_df01_ds01), pointer :: s01_drst01
  end function
  function s01_df02(s01_df02_dp01) result(s01_drst02)
   external             :: s01_df02_dp01
   procedure(), pointer :: s01_drst02
  end function
  function ifunc01(if01_ds01) result(irst01)
   interface
    subroutine if01_ds01()
    end subroutine
   end interface
   procedure(if01_ds01), pointer :: irst01
  end function
  function ifunc02(f02_dp01) result(irst02)
   external             :: f02_dp01
   procedure(), pointer :: irst02
  end function
 end interface

 procedure(s01_df01),  pointer :: ps01_df01p
 procedure(s01_df02),  pointer :: ps01_df02p
 procedure(ifunc01),   pointer :: pifunc01p
 procedure(ifunc02),   pointer :: pifunc02p

 type ty01
  procedure(s01_df01), pointer, nopass :: ps01_df01p
 end type

 type ty02
  procedure(s01_df02), pointer, nopass :: ps01_df02p
 end type

 type ty03
  procedure(ifunc01),  pointer, nopass :: pifunc01p
 end type

 type ty04
  procedure(ifunc02),  pointer, nopass :: pifunc02p
 end type

 type (ty01) :: tt01
 type (ty02) :: tt02
 type (ty03) :: tt03
 type (ty04) :: tt04

 ps01_df01p => s01_df01
 ps01_df01p => ifunc01

 ps01_df02p => s01_df02
 ps01_df02p => ifunc02

 pifunc01p  => s01_df01
 pifunc01p  => ifunc01

 pifunc02p  => s01_df02
 pifunc02p  => ifunc02

 tt01 = ty01(s01_df01)
 tt01 = ty01(ifunc01)

 tt02 = ty02(s01_df02)
 tt02 = ty02(ifunc02)

 tt03 = ty03(s01_df01)
 tt03 = ty03(ifunc01)

 tt04 = ty04(s01_df02)
 tt04 = ty04(ifunc02)

 call csub01(s01_df01)
 call csub01(ifunc01)

 call csub02(s01_df02)
 call csub02(ifunc02)

 call csub03(s01_df01)
 call csub03(ifunc01)

 call csub04(s01_df02)
 call csub04(ifunc02)

 contains

  subroutine csub01(cs01_dp01)
   procedure(s01_df01) :: cs01_dp01
  end subroutine
  subroutine csub02(cs02_dp01)
   procedure(s01_df02) :: cs02_dp01
  end subroutine
  subroutine csub03(cs03_dp01)
   procedure(ifunc01)  :: cs03_dp01
  end subroutine
  subroutine csub04(cs04_dp01)
   procedure(ifunc02)  :: cs04_dp01
  end subroutine

end subroutine

end

function ifunc01(if01_ds01) result(irst01)
 interface
  subroutine if01_ds01()
  end subroutine
 end interface
 procedure(if01_ds01), pointer :: irst01
 irst01 => if01_ds01
end function

function ifunc02(f02_dp01) result(irst02)
 external             :: f02_dp01
 procedure(), pointer :: irst02
 irst02 => f02_dp01
end function

subroutine if01_ds01()
 print *,'pass'
end subroutine
