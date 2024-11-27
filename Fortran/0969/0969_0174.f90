module mod01
 contains
  function m01_func01(m01_f01_arg01) result(m01_rst01)
   integer                  :: m01_f01_arg01
   character(m01_f01_arg01) :: m01_rst01
   entry m01_ent01(m01_f01_arg01) result(m01_rst01)
   m01_rst01 = 'pass'
  end function
  subroutine m01_sub01(m01_s01_arg01)
   type ty01
    sequence
    procedure(m01_func01), pointer, nopass :: ppp
   end type
   type (ty01) :: m01_s01_arg01
   print *,m01_s01_arg01%ppp(4)
  end subroutine
  subroutine m01_sub02(m01_s02_arg01)
   type ty02
    sequence
    procedure(m01_ent01), pointer, nopass :: ppp
   end type
   type (ty02) :: m01_s02_arg01
   print *,m01_s02_arg01%ppp(4)
  end subroutine
end module

use mod01

type ty01
 sequence
 procedure(m01_func01), pointer, nopass :: ppp
end type

type ty02
 sequence
 procedure(m01_ent01), pointer, nopass :: ppp
end type

type (ty01) :: t01
type (ty02) :: t02

t01 = ty01(m01_func01)
t02 = ty02(m01_ent01)

call csub01(t01) 
call csub02(t02) 

call m01_sub01(t01)
call m01_sub02(t02)

contains
 subroutine csub01(cs01_arg01)
  type ty01
   sequence
   procedure(m01_func01), pointer, nopass :: ppp
  end type
  type (ty01) :: cs01_arg01
  print *,cs01_arg01%ppp(4)
 end subroutine
 subroutine csub02(cs02_arg01)
  type ty02
   sequence
   procedure(m01_ent01), pointer, nopass :: ppp
  end type
  type (ty02) :: cs02_arg01
  print *,cs02_arg01%ppp(4)
 end subroutine
end
