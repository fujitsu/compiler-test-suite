module mod01
 type ty01
  sequence
  procedure(integer),    pointer, nopass :: pr_pn01
 end type
 type ty02
  sequence
  procedure(type(ty01)), pointer, nopass :: pr_pn02
 end type
 contains
  subroutine m01_sub01()
   type (ty01) :: t01
   type (ty02) :: t02

   call sub01(t01)
   call sub02(t01)
   call sub03(t01)
   call sub04(t01)
   call sub05(t01)
   call sub06(t01)

   call sub08(t02)
   call sub09(t02)
   call sub10(t02)
   call sub11(t02)
   call sub12(t02)
   call sub13(t02)
   call sub14(t02)
   call sub15(t02)
   call sub16(t02)
   call sub17(t02)

  end subroutine
end module


use mod01

type (ty01) :: t01
type (ty02) :: t02

   call sub01(t01)
   call sub02(t01)
   call sub03(t01)
   call sub04(t01)
   call sub05(t01)
   call sub06(t01)

   call sub08(t02)
   call sub09(t02)
   call sub10(t02)
   call sub11(t02)
   call sub12(t02)
   call sub13(t02)
   call sub14(t02)
   call sub15(t02)
   call sub16(t02)
   call sub17(t02)

end

subroutine sub01(s01_arg01)
 use mod01
 type (ty01) :: s01_arg01
end

subroutine sub02(s02_arg01)
 use mod01, mty01 => ty01
 type ty01
  sequence
  procedure(integer),     pointer, nopass :: pr_pn01
 end type
 type (ty01) :: s02_arg01
end

subroutine sub03(s03_arg01)
 use mod01, mty01 => ty01
 type ty01
  sequence
  procedure(logical),     pointer, nopass :: pr_pn01
 end type
 type (ty01) :: s03_arg01
end

subroutine sub04(s04_arg01)
 use mod01, mty01 => ty01
 type ty01
  sequence
  procedure(),            pointer, nopass :: pr_pn01
 end type
 type (ty01) :: s04_arg01
end

subroutine sub05(s05_arg01)
 use mod01, mty01 => ty01
 type ty01
  sequence
  procedure(iabs),        pointer, nopass :: pr_pn01
 end type
 type (ty01) :: s05_arg01
end

subroutine sub06(s06_arg01)
 use mod01, mty01 => ty01
 type ty01
  sequence
  procedure(type(mty01)), pointer, nopass :: pr_pn01
 end type
 type (ty01) :: s06_arg01
end


subroutine sub08(s08_arg01)
 use mod01
 type (ty02) :: s08_arg01
end

subroutine sub09(s09_arg01)
 use mod01, mty02 => ty02
 type ty02
  sequence
  procedure(type(ty01)), pointer, nopass :: pr_pn02
 end type
 type (ty02) :: s09_arg01
end

subroutine sub10(s10_arg01)
 use mod01, mty01 => ty01, mty02 => ty02
 type ty01
  sequence
  procedure(integer),     pointer, nopass :: pr_pn01
 end type
 type ty02
  sequence
  procedure(type(ty01)),  pointer, nopass :: pr_pn02
 end type
 type (ty02) :: s10_arg01
end

subroutine sub11(s11_arg01)
 use mod01, mty01 => ty01, mty02 => ty02
 type ty01
  sequence
  procedure(integer),     pointer, nopass :: pr_pn01
 end type
 type ty02
  sequence
  procedure(type(mty01)), pointer, nopass :: pr_pn02
 end type
 type (ty02) :: s11_arg01
end

subroutine sub12(s12_arg01)
 use mod01, mty01 => ty01, mty02 => ty02
 type ty01
  sequence
  procedure(logical),     pointer, nopass :: pr_pn01
 end type
 type ty02
  sequence
  procedure(type(ty01)),  pointer, nopass :: pr_pn02
 end type
 type (ty02) :: s12_arg01
end

subroutine sub13(s13_arg01)
 use mod01, mty01 => ty01, mty02 => ty02
 type ty01
  sequence
  procedure(iabs),        pointer, nopass :: pr_pn01
 end type
 type ty02
  sequence
  procedure(type(ty01)),  pointer, nopass :: pr_pn02
 end type
 type (ty02) :: s13_arg01
end

subroutine sub14(s14_arg01)
 use mod01, mty01 => ty01, mty02 => ty02
 type ty01
  sequence
  procedure(type(mty01)), pointer, nopass :: pr_pn01
 end type
 type ty02
  sequence
  procedure(type(ty01)),  pointer, nopass :: pr_pn02
 end type
 type (ty02) :: s14_arg01
end

subroutine sub15(s15_arg01)
 use mod01, mty02 => ty02
 type ty02
  sequence
  procedure(integer),     pointer, nopass :: pr_pn02
 end type
 type (ty02) :: s15_arg01
end

subroutine sub16(s16_arg01)
 use mod01, mty02 => ty02
 type ty02
  sequence
  procedure(),            pointer, nopass :: pr_pn02
 end type
 type (ty02) :: s16_arg01
end

subroutine sub17(s17_arg01)
 use mod01, mty02 => ty02
 type ty02
  sequence
  procedure(iabs),        pointer, nopass :: pr_pn02
 end type
 type (ty02) :: s17_arg01
end
