type ty1
 integer :: a
end type
type ,extends(ty1) :: ty2
 integer :: b
end type
type ,extends(ty2) :: ty3
 integer :: c
end type
type ,extends(ty3) :: ty4
 integer :: d
end type
type ,extends(ty4) :: ty5
 integer :: e
end type

type(ty5) :: xxx(10)

xxx(1)%a     = 1
xxx(1)%b     = 2
xxx(1)%c     = 3

if (xxx(1)%ty4%ty3%ty2%b.ne.xxx(1)%ty4%ty3%b) print *,'  line:23  ', xxx(1)%ty4%ty3%ty2%b, '  ', xxx(1)%ty4%ty3%b
if (xxx(1)%ty4%ty3%ty2%b.ne.xxx(1)%ty4%ty2%b) print *,'  line:24  ', xxx(1)%ty4%ty3%ty2%b, '  ', xxx(1)%ty4%ty2%b

if (xxx(1)%ty4%ty3%ty2%b.ne.xxx(1)%ty3%ty2%b) print *,'  line:26  ', xxx(1)%ty4%ty3%ty2%b, '  ', xxx(1)%ty3%ty2%b
if (xxx(1)%ty4%ty3%ty2%b.ne.xxx(1)%ty3%b)     print *,'  line:27  ', xxx(1)%ty4%ty3%ty2%b, '  ', xxx(1)%ty3%b

if (xxx(1)%ty4%ty3%ty2%b.ne.xxx(1)%ty2%b)     print *,'  line:29  ', xxx(1)%ty4%ty3%ty2%b, '  ', xxx(1)%ty2%b
if (xxx(1)%ty4%ty3%ty2%b.ne.xxx(1)%b)         print *,'  line:30  ', xxx(1)%ty4%ty3%ty2%b, '  ', xxx(1)%b

if (xxx(1)%ty4%ty3%c.ne.xxx(1)%ty4%c)         print *,'  line:32  ', xxx(1)%ty4%ty3%ty2%b, '  ', xxx(1)%ty4%c
if (xxx(1)%ty4%ty3%c.ne.xxx(1)%c)             print *,'  line:33  ', xxx(1)%ty4%ty3%ty2%b, '  ', xxx(1)%ty4%c

if (xxx(1)%c.ne.xxx(1)%b + xxx(1)%a)          print *,'  line:35  ', xxx(1)%c,             '  ', xxx(1)%b + xxx(1)%a

print *,'pass'

end
