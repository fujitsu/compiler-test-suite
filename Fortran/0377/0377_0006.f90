type ty1
 integer :: i_ty1
end type

type,extends(ty1) :: ty2
 integer :: i_ty2
end type

type,extends(ty2) :: ty3
 integer :: i_ty3
end type

type,extends(ty2) :: tya
 integer :: i_tya
end type

type,extends(tya) :: ty4
 integer :: i_ty4
 type(ty3) :: ty3
end type

type,extends(ty4) :: ty5
 integer :: i_ty5
end type

type,extends(ty5) :: ty6
 integer :: i_ty6
end type

type,extends(ty6) :: ty7
 integer :: i_ty7
end type

type,extends(ty5) :: tyb
 integer :: i_tyb
end type

type,extends(tyb) :: ty8
 integer :: i_ty8
 type(ty7) :: ty7
end type

type(ty8) :: xxx

xxx%i_ty1 = 1
xxx%ty1%i_ty1 = 1
xxx%i_ty2 = 1
xxx%ty2%i_ty2 = 1
xxx%ty2%ty1%i_ty1 = 1
xxx%i_ty4 = 1
xxx%ty4%i_ty4 = 1
xxx%ty4%tya%i_tya = 1
xxx%ty4%tya%ty2%i_ty2 = 1
xxx%ty4%tya%ty2%ty1%i_ty1 = 1
xxx%i_ty5 = 1
xxx%ty5%i_ty5 = 1
xxx%ty5%ty4%i_ty4 = 1
xxx%ty5%ty4%tya%i_tya = 1
xxx%ty5%ty4%tya%ty2%i_ty2 = 1
xxx%ty5%ty4%tya%ty2%ty1%i_ty1 = 1

xxx%i_ty8 = 1

xxx%i_tya = 1
xxx%tya%i_tya = 1
xxx%tya%i_ty2 = 1
xxx%tya%i_ty1 = 1

xxx%i_tyb = 1
xxx%tyb%i_tyb = 1
xxx%tyb%i_ty5 = 1
xxx%tyb%i_ty4 = 1
xxx%tyb%i_tya = 1
xxx%tyb%i_ty2 = 1
xxx%tyb%i_ty1 = 1

xxx%ty3%i_ty3 = 1
xxx%ty3%i_ty2 = 1
xxx%ty3%i_ty1 = 1

xxx%ty7%i_ty7 = 1
xxx%ty7%i_ty6 = 1
xxx%ty7%i_ty5 = 1
xxx%ty7%i_ty4 = 1
xxx%ty7%i_ty2 = 1
xxx%ty7%i_tya = 1
xxx%ty7%i_ty1 = 1

print *,'pass'

end
