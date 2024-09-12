type ty0
end type

type ,extends(ty0):: ty1
end type

type(ty1) :: sss01 = ty1(ty0())
type(ty1) :: sss02
sss02 = ty1(ty0())
print *,'pass'
end
