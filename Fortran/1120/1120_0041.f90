module mod01
 interface
  subroutine m01isub01()
  end subroutine
 end interface
 contains
  function m01func01() result(m01rst01)
   procedure(m01isub01), pointer:: m01rst01
   entry m01f01ent01() result(m01rst01)
   m01rst01 => m01isub01
  end function
  subroutine m01sub01()
   type ty01
    procedure(m01func01), pointer, nopass :: pprocp01
   end type
   type (ty01) :: tt01
   tt01 = ty01(m01func01)
   tt01 = ty01(m01f01ent01)
  end subroutine
end module

print *,'pass'

end

subroutine isub01(ifunc01)
 interface
  function ifunc01() result(irst01)
   use mod01
   procedure(m01isub01), pointer :: irst01
  end function
 end interface
 type ty02
  procedure(ifunc01), pointer, nopass :: pprocp02
 end type
 type (ty02) :: tt02
 tt02 = ty02(ifunc01)
end subroutine

subroutine m01isub01()
end subroutine
