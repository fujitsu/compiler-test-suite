type ty01
 integer :: i01
end type
type ty02
 integer :: i02
end type



print *,same_type_as(ty01(1), ty02(1))


end
