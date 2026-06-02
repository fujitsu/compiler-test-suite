print *,'pass'

end

function fun01() result(fun01_res)
 implicit none
 interface
  function fun02()
   implicit none
   character :: fun02
  end function
 end interface
 character :: fun01_res
 character :: ent01_res
 type :: typ01
  procedure(ent01),pointer,nopass :: prc01
 end type
 type(typ01) :: str01
 procedure(ent01),pointer :: prc01

 str01%prc01 => fun02
 prc01 => fun02
 fun01_res = "1"
 entry ent01() result(ent01_res)
 ent01_res = "2"
end function

function fun02()
 implicit none
 character :: fun02
 fun02 = "1"
end function
