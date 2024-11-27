interface
 function ifunc01() result(irst01)
  integer :: irst01
 end function
end interface
procedure(ifunc01), pointer :: pifunc01p
pifunc01p => ifunc01
end
function ifunc01() result(irst01)
 integer :: irst01
 irst01 = 1
end function
