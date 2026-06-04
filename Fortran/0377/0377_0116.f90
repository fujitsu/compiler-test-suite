type ty01
end type

type, extends(ty01) :: ty02
end type

type, extends(ty02) :: ty03
end type

type :: ty04
 integer :: i04
end type

type, extends(ty04) :: ty05
end type

type, extends(ty05) :: ty06
end type

type ty07
end type

type, extends(ty07) :: ty08
 integer :: i08
end type

type, extends(ty08) :: ty09
end type

type ty10
end type

type, extends(ty10) :: ty11
end type

type, extends(ty11) :: ty12
 integer :: i12
end type

type (ty01) :: tt01
type (ty02) :: tt02
type (ty03) :: tt03
type (ty04) :: tt04
type (ty05) :: tt05
type (ty06) :: tt06
type (ty07) :: tt07
type (ty08) :: tt08
type (ty09) :: tt09
type (ty10) :: tt10
type (ty11) :: tt11
type (ty12) :: tt12

tt01 = ty01()
tt02 = ty02()
tt02 = ty02(ty01())
tt03 = ty03()
tt03 = ty03(ty01())
tt03 = ty03(ty02())
tt03 = ty03(ty02(ty01()))

tt04 = ty04(1)
tt05 = ty05(1)
tt05 = ty05(ty04(1))
tt06 = ty06(1)
tt06 = ty06(ty04(1))
tt06 = ty06(ty05(1))
tt06 = ty06(ty05(ty04(1)))

tt07 = ty07()
tt08 = ty08(1)
tt08 = ty08(ty07(), 1)
tt09 = ty09(1)
tt09 = ty09(ty07(), 1)
tt09 = ty09(ty08(1))
tt09 = ty09(ty08(ty07(), 1))

tt10 = ty10()
tt11 = ty11()
tt11 = ty11(ty10())
tt12 = ty12(1)
tt12 = ty12(ty10(), 1)
tt12 = ty12(ty11(), 1)
tt12 = ty12(ty11(ty10()), 1)

print *,'pass'

end
