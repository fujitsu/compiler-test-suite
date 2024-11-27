interface
 function ifunc01() result(irst01)
  procedure(integer), pointer :: irst01
 end function
end interface

type ty01
 procedure(ifunc01), pointer, nopass :: pfunc01p
end type

type(ty01) :: tt01

call csub01(tt01%pfunc01p())
call csub02(tt01%pfunc01p())
call csub03(tt01%pfunc01p())

contains
 subroutine csub01(dsub01)
  interface
   subroutine dsub01()
   end subroutine
  end interface
 end subroutine
 subroutine csub02(psub01)
  interface
   subroutine sub01()
   end subroutine
  end interface
  procedure(sub01) :: psub01
 end subroutine
 subroutine csub03(psub01p)
  interface
   subroutine sub01()
   end subroutine
  end interface
  procedure(sub01) :: psub01p
 end subroutine
end
