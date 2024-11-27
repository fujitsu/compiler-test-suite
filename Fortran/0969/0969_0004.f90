type :: ty01
 integer, allocatable :: ia01(:)
end type
type :: ty02
 integer, pointer     :: ip01(:)
end type

integer, pointer :: ip01(:)
integer, target  :: it01(1)

type (ty01) :: tt01
type (ty02) :: tt02

ip01      => it01
tt02%ip01 => it01

tt01 = ty01(null())
tt01 = ty01(null(ip01))
tt01 = ty01(null(tt02%ip01))

it01 = 2

end

subroutine sub01()
 type :: ty01
  integer, allocatable :: ia01
 end type
 type :: ty02
  integer, pointer     :: ip01
 end type

 integer, pointer :: ip01
 integer, target  :: it01

 type (ty01) :: tt01
 type (ty02) :: tt02

 ip01      => it01
 tt02%ip01 => it01

 tt01 = ty01(null())
 tt01 = ty01(null(ip01))
 tt01 = ty01(null(tt02%ip01))
end subroutine
