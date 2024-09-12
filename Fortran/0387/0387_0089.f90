interface isub
 subroutine isub01(dchp01)
  character(4), pointer :: dchp01(:)
 end subroutine
 subroutine isub02(dchp02)
  character(4), pointer :: dchp02
 end subroutine
end interface

interface
 function ifunc01(dchp01) result(irst01)
  character(4), pointer :: dchp01
  character(4), pointer :: irst01
 end function
end interface

procedure(ifunc01), pointer :: pifuncp01
character(4), pointer :: chp01

chp01     => null()
pifuncp01 => ifunc01

call isub(ifunc01(chp01))
call isub(pifuncp01(chp01))

print *,'pass'

end

subroutine isub01(dchp01)
 character(4), pointer :: dchp01(:)
 dchp01 => null()
end subroutine

subroutine isub02(dchp02)
 character(4), pointer :: dchp02
 character(4), target  :: cht01
 dchp02 => cht01
end subroutine

function ifunc01(dchp01) result(irst01)
 character(4), pointer :: dchp01
 character(4), pointer :: irst01
 irst01 => dchp01
end function
