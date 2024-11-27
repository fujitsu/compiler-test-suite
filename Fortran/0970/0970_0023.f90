type ty01
 sequence
 type (ty01), pointer :: t01
 integer :: i01(1)
end type
type ty02
 sequence
 type (ty02), pointer :: t02
 type (ty01), pointer :: t01
end type

type (ty02) :: t02
call csub01(t02)
call csub02(t02)

end

subroutine csub01(cs01_arg01)
 type ty01
  sequence
  type (ty01), pointer :: t01
  integer :: i01
 end type
 type ty02
  sequence
  type (ty02), pointer :: t02
  type (ty01), pointer :: t01
 end type
 type (ty02) :: cs01_arg01
end subroutine

subroutine csub02(cs02_arg01)
 type ty01
  sequence
  type (ty01), pointer :: t01
  integer :: i01(1)
 end type
 type ty02
  sequence
  type (ty02), pointer :: t02
  type (ty01), pointer :: t01
 end type
 type (ty02) :: cs02_arg01
end subroutine
