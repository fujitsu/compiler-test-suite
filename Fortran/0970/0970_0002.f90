type ty01
 sequence
 type (ty01), pointer :: t01
 integer              :: i01(1)
 type (ty01), pointer :: t011
end type
type ty02
 sequence
 type (ty02), pointer :: t02
 type (ty01), pointer :: t01
 type (ty02), pointer :: t022
end type
type ty03
 sequence
 type (ty03), pointer :: t03
 integer :: i03
end type
type ty04
 sequence
 type (ty04), pointer :: t04
 type (ty03), pointer :: t03
 type (ty02), pointer :: t02
 type (ty03), pointer :: t033
 type (ty04), pointer :: t044
end type

type (ty04) :: t04

call csub01(t04)
call csub02(t04)

end

subroutine csub01(cs01_arg01)
 type ty01
  sequence
  type (ty01), pointer :: t01
  integer              :: i01
  type (ty01), pointer :: t011
 end type
 type ty02
  sequence
  type (ty02), pointer :: t02
  type (ty01), pointer :: t01
  type (ty02), pointer :: t022
 end type
 type ty03
  sequence
  type (ty03), pointer :: t03
  integer :: i03
 end type
 type ty04
  sequence
  type (ty04), pointer :: t04
  type (ty03), pointer :: t03
  type (ty02), pointer :: t02
  type (ty03), pointer :: t033
  type (ty04), pointer :: t044
 end type
 type (ty04) :: cs01_arg01
end subroutine

subroutine csub02(cs02_arg01)
 type ty01
  sequence
  type (ty01), pointer :: t01
  integer              :: i01(1)
  type (ty01), pointer :: t011
 end type
 type ty02
  sequence
  type (ty02), pointer :: t02
  type (ty01), pointer :: t01
  type (ty02), pointer :: t022
 end type
 type ty03
  sequence
  type (ty03), pointer :: t03
  integer :: i03
 end type
 type ty04
  sequence
  type (ty04), pointer :: t04
  type (ty03), pointer :: t03
  type (ty02), pointer :: t02
  type (ty03), pointer :: t033
  type (ty04), pointer :: t044
 end type
 type (ty04) :: cs02_arg01
end subroutine
