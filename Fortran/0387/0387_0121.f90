interface
 function ifunc01() result(irst01)
  character(4) :: irst01
 end function
end interface

type ty01
 procedure(character(4)), pointer, nopass :: pchprocp01
end type

type (ty01) :: tt01

tt01 = ty01(ifunc01)

print *,tt01%pchprocp01()

end

function ifunc01() result(irst01)
 character(4) :: irst01
 irst01 = 'pass'
end function
