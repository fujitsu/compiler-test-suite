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

type(ty5) :: xxx

xxx%a     = 1
xxx%b     = 2
xxx%c     = 3

if (xxx%ty4%ty3%ty2%b.ne.xxx%ty4%ty3%b) print *,'  line:23  ', xxx%ty4%ty3%ty2%b, '  ', xxx%ty4%ty3%b
if (xxx%ty4%ty3%ty2%b.ne.xxx%ty4%ty2%b) print *,'  line:24  ', xxx%ty4%ty3%ty2%b, '  ', xxx%ty4%ty2%b

if (xxx%ty4%ty3%ty2%b.ne.xxx%ty3%ty2%b) print *,'  line:26  ', xxx%ty4%ty3%ty2%b, '  ', xxx%ty3%ty2%b
if (xxx%ty4%ty3%ty2%b.ne.xxx%ty3%b)     print *,'  line:27  ', xxx%ty4%ty3%ty2%b, '  ', xxx%ty3%b

if (xxx%ty4%ty3%ty2%b.ne.xxx%ty2%b)     print *,'  line:29  ', xxx%ty4%ty3%ty2%b, '  ', xxx%ty2%b
if (xxx%ty4%ty3%ty2%b.ne.xxx%b)         print *,'  line:30  ', xxx%ty4%ty3%ty2%b, '  ', xxx%b

if (xxx%ty4%ty3%c.ne.xxx%ty4%c)         print *,'  line:32  ', xxx%ty4%ty3%ty2%b, '  ', xxx%ty4%c
if (xxx%ty4%ty3%c.ne.xxx%c)             print *,'  line:33  ', xxx%ty4%ty3%ty2%b, '  ', xxx%ty4%c

if (xxx%c.ne.xxx%b + xxx%a)             print *,'  line:35  ', xxx%c,             '  ', xxx%b + xxx%a

print *,'pass'

end
