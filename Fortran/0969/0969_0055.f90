type ty01
 integer :: ty01_ii01 = 1
 integer :: ty01_ii02 = 2
 integer :: ty01_ii03(3)
end type

type ty02
 integer :: ty02_ii05 = 0
end type

type (ty01) :: tt01
type (ty02) :: tt02

tt02 = ty02()

tt01 = ty01((1 + 2) * 3 / 4, int(dim((1 + 2) * 3 / 4, y = tt02%ty02_ii05)), ty01_ii03 = (/1, 2, 3/))

print *,tt01

end
