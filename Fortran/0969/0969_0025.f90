type a__
 integer :: ii01
end type

type a___
 integer :: ii01
end type

type(a__)  :: ta1, ta11
type(a___) :: ta2, ta22


print *,same_type_as(ta1, ta2 )
print *,same_type_as(ta1, ta11)
print *,same_type_as(ta2, ta22)

end
