interface ty01
 function ifunc01(if01_arg01) result(irst01)
  procedure(integer), pointer :: if01_arg01
  integer                     :: irst01
 end function
end interface
interface
 function ifunc02() result(irst02)
  integer :: irst02
 end function
end interface

type ty01
 procedure(logical), pointer, nopass :: p01
end type

procedure(integer), pointer :: p01

p01 => ifunc02

print *,ty01(p01) 

end

function ifunc01(if01_arg01) result(irst01)
 procedure(integer), pointer :: if01_arg01
 integer                     :: irst01
 irst01 = if01_arg01()
end function

function ifunc02() result(irst02)
 integer :: irst02
 irst02 = 1
end function
