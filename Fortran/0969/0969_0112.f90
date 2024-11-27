interface ty01
 function ifunc01() result(irst01)
  integer :: irst01
 end function
end interface

type ty01
 integer :: ii01
end type

print *,ty01(1)

print *,ty01()

end

function ifunc01() result(irst01)
 integer :: irst01
end function
