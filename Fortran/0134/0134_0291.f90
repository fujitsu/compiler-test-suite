type ty1
end type

type , extends(ty1) :: ty2
end type

type , extends(ty2) :: ty3
 type (ty2) :: tt2
end type

type (ty3) :: tt3

tt3 = ty3(ty2(), ty2())

print *,'pass'

end
