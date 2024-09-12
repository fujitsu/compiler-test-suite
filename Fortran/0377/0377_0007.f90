type ty1
 integer :: a
 procedure(), pointer,nopass :: pp
end type

type , extends(ty1) :: ty2
 
end type

type , extends(ty2) :: ty3
 
end type

type , extends(ty3) :: ty4
 type (ty4),pointer :: yyy
end type

type , extends(ty4) :: ty5
 
end type

type , extends(ty5) :: ty6
 type (ty4) :: tt4(4)
end type

type , extends(ty6) :: ty7
 type (ty3) :: tt3(4)
end type

type , extends(ty7) :: ty8
 type (ty2) :: tt2(4)
end type

type (ty8) :: xxx

xxx = ty8(ty7(ty6(ty5(ty4(ty3(ty2(ty1(1, null()))), null())), ty4(ty3(ty2(ty1(1, null()))), null())), ty3(ty2(ty1(1, null())))), ty2(ty1(1, null())))

xxx%a = 1

allocate(xxx%yyy)
allocate(xxx%yyy%yyy)
allocate(xxx%yyy%yyy%yyy)

xxx%yyy%a = 1
xxx%yyy%pp => null()

xxx%yyy%yyy%a = 1
xxx%yyy%yyy%pp => null()

xxx%yyy%yyy%yyy%a = 1
xxx%yyy%yyy%yyy%pp => null()

allocate(xxx%ty6%tt4(1)%yyy)
allocate(xxx%ty6%tt4(1)%yyy%yyy)
allocate(xxx%ty6%tt4(1)%yyy%yyy%yyy)

xxx%ty6%tt4(1)%yyy%a = 1
xxx%ty6%tt4(1)%yyy%pp => null()

xxx%ty6%tt4(1)%yyy%yyy%a = 1
xxx%ty6%tt4(1)%yyy%yyy%pp => null()

xxx%ty6%tt4(1)%yyy%yyy%yyy%a = 1
xxx%ty6%tt4(1)%yyy%yyy%yyy%pp => null()

xxx%tt2%a = 1

xxx%tt2(1)%pp => null()

xxx%tt3(1)%a = 1

xxx%tt3(1)%pp => null()

print *,'pass'

end
