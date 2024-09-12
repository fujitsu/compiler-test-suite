type ty1
 integer :: a
end type

type, extends(ty1) :: ty2
 integer :: b
end type

type, extends(ty2) :: ty3
 integer :: c
end type

type, extends(ty3) :: ty4
 integer :: d
 type (ty4) , pointer :: p4_1
 type (ty4) , pointer :: p4_2
 type (ty4) , pointer :: p4_3
 type (ty3) :: ty3a
end type

type, extends(ty4) :: ty5
 integer :: e
end type

type, extends(ty5) :: ty6
 integer :: f
end type

type, extends(ty6) :: ty7
 integer :: g
end type

type (ty7) :: ttt

ttt%p4_1 => null()
ttt%ty3a = ty3(ty2(ty1(1), 2), 3)

allocate(ttt%p4_1)
allocate(ttt%p4_1%p4_1)
allocate(ttt%p4_1%p4_1%p4_1)
allocate(ttt%p4_1%p4_1%p4_2)
allocate(ttt%p4_1%p4_1%p4_3)
allocate(ttt%p4_1%p4_2)
allocate(ttt%p4_1%p4_2%p4_1)
allocate(ttt%p4_1%p4_2%p4_2)
allocate(ttt%p4_1%p4_2%p4_3)
allocate(ttt%p4_1%p4_3)
allocate(ttt%p4_1%p4_3%p4_1)
allocate(ttt%p4_1%p4_3%p4_2)
allocate(ttt%p4_1%p4_3%p4_3)
allocate(ttt%p4_2)
allocate(ttt%p4_2%p4_1)
allocate(ttt%p4_2%p4_1%p4_1)
allocate(ttt%p4_2%p4_1%p4_2)
allocate(ttt%p4_2%p4_1%p4_3)
allocate(ttt%p4_2%p4_2)
allocate(ttt%p4_2%p4_2%p4_1)
allocate(ttt%p4_2%p4_2%p4_2)
allocate(ttt%p4_2%p4_2%p4_3)
allocate(ttt%p4_2%p4_3)
allocate(ttt%p4_2%p4_3%p4_1)
allocate(ttt%p4_2%p4_3%p4_2)
allocate(ttt%p4_2%p4_3%p4_3)
allocate(ttt%p4_3)
allocate(ttt%p4_3%p4_1)
allocate(ttt%p4_3%p4_1%p4_1)
allocate(ttt%p4_3%p4_1%p4_2)
allocate(ttt%p4_3%p4_1%p4_3)
allocate(ttt%p4_3%p4_2)
allocate(ttt%p4_3%p4_2%p4_1)
allocate(ttt%p4_3%p4_2%p4_2)
allocate(ttt%p4_3%p4_2%p4_3)
allocate(ttt%p4_3%p4_3)
allocate(ttt%p4_3%p4_3%p4_1)
allocate(ttt%p4_3%p4_3%p4_2)
allocate(ttt%p4_3%p4_3%p4_3)


ttt%p4_1%p4_2%p4_3%a = 1
ttt%p4_2%p4_3%p4_1%a = 2
ttt%p4_3%p4_1%p4_2%a = 3

ttt%p4_1%p4_2%p4_3%b = 4
ttt%p4_2%p4_3%p4_1%b = 5
ttt%p4_3%p4_1%p4_2%b = 6

ttt%p4_1%p4_2%p4_3%c = 7
ttt%p4_2%p4_3%p4_1%c = 8
ttt%p4_3%p4_1%p4_2%c = 9

ttt%p4_1%p4_1%p4_1 = ty4(ty3(ty2(ty1(1), 2), 3), 4 , null(), null(), null(), ty3(ty2(ty1(1), 2), 3))
ttt%p4_2%p4_2%p4_2 = ty4(ty3(ty2(ty1(1), 2), 3), 4 , null(), null(), null(), ty3(ty2(ty1(1), 2), 3))
ttt%p4_3%p4_3%p4_3 = ty4(ty3(ty2(ty1(1), 2), 3), 4 , null(), null(), null(), ty3(ty2(ty1(1), 2), 3))

deallocate(ttt%p4_1%p4_1%p4_1)
deallocate(ttt%p4_1%p4_1%p4_2)
deallocate(ttt%p4_1%p4_1%p4_3)
deallocate(ttt%p4_1%p4_1)
deallocate(ttt%p4_1%p4_2%p4_1)
deallocate(ttt%p4_1%p4_2%p4_2)
deallocate(ttt%p4_1%p4_2%p4_3)
deallocate(ttt%p4_1%p4_2)
deallocate(ttt%p4_1%p4_3%p4_1)
deallocate(ttt%p4_1%p4_3%p4_2)
deallocate(ttt%p4_1%p4_3%p4_3)
deallocate(ttt%p4_1%p4_3)
deallocate(ttt%p4_1)
deallocate(ttt%p4_2%p4_1%p4_1)
deallocate(ttt%p4_2%p4_1%p4_2)
deallocate(ttt%p4_2%p4_1%p4_3)
deallocate(ttt%p4_2%p4_1)
deallocate(ttt%p4_2%p4_2%p4_1)
deallocate(ttt%p4_2%p4_2%p4_2)
deallocate(ttt%p4_2%p4_2%p4_3)
deallocate(ttt%p4_2%p4_2)
deallocate(ttt%p4_2%p4_3%p4_1)
deallocate(ttt%p4_2%p4_3%p4_2)
deallocate(ttt%p4_2%p4_3%p4_3)
deallocate(ttt%p4_2%p4_3)
deallocate(ttt%p4_2)
deallocate(ttt%p4_3%p4_1%p4_1)
deallocate(ttt%p4_3%p4_1%p4_2)
deallocate(ttt%p4_3%p4_1%p4_3)
deallocate(ttt%p4_3%p4_1)
deallocate(ttt%p4_3%p4_2%p4_1)
deallocate(ttt%p4_3%p4_2%p4_2)
deallocate(ttt%p4_3%p4_2%p4_3)
deallocate(ttt%p4_3%p4_2)
deallocate(ttt%p4_3%p4_3%p4_1)
deallocate(ttt%p4_3%p4_3%p4_2)
deallocate(ttt%p4_3%p4_3%p4_3)
deallocate(ttt%p4_3%p4_3)
deallocate(ttt%p4_3)

ttt%ty4 = ty4(ty3(ty2(ty1(1), 2), 3), 4 , null(), null(), null(), ty3(ty2(ty1(1), 2), 3))
ttt%ty4 = ty4(ty3(ty2(ty1(1), 2), 3), 4 , null(), null(), null(), ty3(ty2(ty1(1), 2), 3))
ttt%ty4 = ty4(ty3(ty2(ty1(1), 2), 3), 4 , null(), null(), null(), ty3(ty2(ty1(1), 2), 3))

print *,'pass'

end
