type ty1
 integer :: a
 integer :: b
end type

type , extends(ty1) :: ty2
 
end type

type , extends(ty2) :: ty3
 
end type

type , extends(ty3) :: ty4
 
end type

type , extends(ty4) :: ty5
 
end type

type(ty5) :: ttt

ttt%ty2%a     = 1

ttt%ty2%ty1%b = 1

if (ttt%ty4%ty3%ty2%ty1%a.ne.ttt%ty4%ty3%ty2%ty1%b) print *,'error'
if (ttt%a.ne.ttt%b) print *,'error'

print *,'pass'

end
