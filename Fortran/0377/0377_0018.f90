type ty01
 integer :: i01 = 101
 integer :: i02 = 22
 integer :: i03 = 3
end type
type, extends(ty01) :: ty02
 integer :: j01 = 1
 integer :: j02 = 12
 integer :: j03 = 30
end type

type (ty01) :: tt01
type (ty02) :: tt02

tt02 = ty02(ty01(i01 = 1))
tt02 = ty02(j01 = 3)

print *,'pass'

end
