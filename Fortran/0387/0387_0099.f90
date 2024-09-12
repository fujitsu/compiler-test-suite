 implicit none
 type :: typ01
  integer :: i01
 end type
 procedure(type(typ01)) :: prc01
 print *,'pass'
end

function prc01()
 implicit none
 type :: typ01
  integer :: i01
 end type
 type(typ01) :: prc01
end function
