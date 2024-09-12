type ty01
 sequence
 type(ty01), pointer :: tp01
 integer             :: i01 = 1
end type

interface ty01
 function ifunc01() result(irst01)
  type ty01
   sequence
   type(ty01), pointer :: tp01
   integer             :: i01 = 1
  end type
  type (ty01) :: irst01
 end function
 function ifunc02(if02_arg01, if02_arg02) result(irst02)
  type ty01
   sequence
   type(ty01), pointer :: tp01
   integer             :: i01 = 1
  end type
  type (ty01), target :: if02_arg01
  integer             :: if02_arg02
  type (ty01)         :: irst02
 end function
end interface

type (ty01), target :: tt01

tt01 = ty01()
tt01 = ty01(tt01)
tt01 = ty01(null())

print *,'pass'

end

function ifunc01() result(irst01)
 type ty01
  sequence
  type(ty01), pointer :: tp01
  integer             :: i01 = 1
 end type
 type (ty01) :: irst01
 irst01 = ty01(null())
end function

function ifunc02(if02_arg01, if02_arg02) result(irst02)
 type ty01
  sequence
  type(ty01), pointer :: tp01
  integer             :: i01 = 1
 end type
 type (ty01), target :: if02_arg01
 integer             :: if02_arg02
 type (ty01)         :: irst02
 irst02 = ty01(if02_arg01)
end function
