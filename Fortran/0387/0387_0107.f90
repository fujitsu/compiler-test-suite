interface
 subroutine isub01()
 end subroutine
end interface

external :: eprocp01
pointer  :: eprocp01

procedure(isub01), pointer :: pisubp01

pisubp01 => isub01
eprocp01 => isub01

call csub02(isub01)

print *,'pass'

contains
 subroutine csub01(deprocp01)
  external :: deprocp01
  pointer  :: deprocp01
 end subroutine

 subroutine csub02(disub01)
  interface
   subroutine disub01()
   end subroutine
  end interface
 end subroutine

 subroutine csub03(dpisubp01)
  interface
   subroutine disub01()
   end subroutine
  end interface
  procedure(isub01), pointer :: dpisubp01
 end subroutine

end

subroutine isub01()
end subroutine

subroutine disub01()
end subroutine
