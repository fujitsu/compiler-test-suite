type ty01
 integer :: ii01 = 1
end type
integer :: i
type (ty01) :: tt01
i = 1

tt01 = ty01(i)

end
