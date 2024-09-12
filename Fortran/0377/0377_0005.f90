type ty1
 integer :: a
end type
type,extends(ty1) :: ty2
 integer :: b
end type
type,extends(ty2) :: ty3
 integer :: c
end type
type,extends(ty3) :: ty4
 integer :: d
 type(ty3) :: ty33
end type
type,extends(ty4) :: ty5
 integer :: e
end type

type(ty5) :: xxx,yyy(3)

xxx%a      = 1
xxx%ty33%a = 2
xxx%b      = 3

yyy(1)%a      = 1
yyy(1)%ty33%a = 2
yyy(1)%b      = 3

if (xxx%ty4%ty3%ty2%a + xxx%ty4%ty33%ty2%ty1%a.ne.xxx%ty4%ty3%ty2%b) print *,'  line:28  ', xxx%ty4%ty3%ty2%ty1%a + xxx%ty4%ty33%ty2%ty1%a, '  ', xxx%ty4%ty3%ty2%b
if (xxx%ty4%ty3%a     + xxx%ty4%ty33%ty2%a    .ne.xxx%ty4%ty3%b)     print *,'  line:29  ', xxx%ty4%ty3%a         + xxx%ty4%ty33%ty2%a,     '  ', xxx%ty4%ty3%b
if (xxx%ty4%a         + xxx%ty4%ty33%a        .ne.xxx%ty4%b)         print *,'  line:30  ', xxx%ty4%a             + xxx%ty4%ty33%a,         '  ', xxx%ty4%b
if (xxx%a             + xxx%ty33%a            .ne.xxx%b)             print *,'  line:31  ', xxx%a                 + xxx%ty33%a,             '  ', xxx%b

if (yyy(1)%ty4%ty3%ty2%a + yyy(1)%ty4%ty33%ty2%ty1%a.ne.yyy(1)%ty4%ty3%ty2%b) print *,'  line:33  ', yyy(1)%ty4%ty3%ty2%ty1%a + yyy(1)%ty4%ty33%ty2%ty1%a, '  ', yyy(1)%ty4%ty3%ty2%b
if (yyy(1)%ty4%ty3%a     + yyy(1)%ty4%ty33%ty2%a    .ne.yyy(1)%ty4%ty2%b)     print *,'  line:34  ', yyy(1)%ty4%ty3%a         + yyy(1)%ty4%ty33%ty2%a,     '  ', yyy(1)%ty4%ty2%b
if (yyy(1)%ty4%a         + yyy(1)%ty4%ty33%a        .ne.yyy(1)%ty4%b)         print *,'  line:35  ', yyy(1)%ty4%a             + yyy(1)%ty4%ty33%a,         '  ', yyy(1)%ty4%b
if (yyy(1)%a             + yyy(1)%ty33%a            .ne.yyy(1)%b)             print *,'  line:36  ', yyy(1)%a                 + yyy(1)%ty33%a,             '  ', yyy(1)%b

print *,'pass'

end
