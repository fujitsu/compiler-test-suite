
print *,'pass'

end

recursive function ifunc01() result(rst01)
 interface
  function func01() result(rst01)
   character(4) :: rst01
  end function
 end interface
 integer :: rst01, rst02
 procedure(cfunc01), pointer :: pprocp01
 entry i1ent01() result(rst02)
  pprocp01 => func01
  rst02 = 1
  if (pprocp01().ne.'pass') rst02 = 0
  rst01 = i1ent01()
 contains
  function cfunc01() result(crst01)
   character(4) :: crst01
   crst01 = 'pass'
  end function
end function

function func01() result(rst01)
 character(4) :: rst01
 rst01 = 'pass'
end function
