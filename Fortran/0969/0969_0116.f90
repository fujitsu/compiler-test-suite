interface ty01
 function ifunc01() result(irst01)
  integer :: irst01
 end function
end interface
interface ty02
 function ifunc02(if02_arg01) result(irst02)
  integer, target  :: if02_arg01
  integer, pointer :: irst02
 end function
end interface

type ty01
 integer :: i01
end type

type ty02
 procedure(integer), pointer, nopass :: p02
end type

integer, target :: i01

print *,ty01()

print *,ty02(i01)

print *,ifunc02(i01)

end

function ifunc01() result(irst01)
 integer :: irst01
end function

function ifunc02(if02_arg01) result(irst02)
 integer, target  :: if02_arg01
 integer, pointer :: irst02
 irst02 => if02_arg01
end function
