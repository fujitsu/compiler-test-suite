type ty1
 integer :: a
end type
type ,extends(ty1) :: ty2
 integer :: b
end type
type ,extends(ty2) :: ty3
 integer :: c
 type (ty1) :: t1
end type
type ,extends(ty3) :: ty4
 integer :: d
end type
type ,extends(ty4) :: ty5
 integer :: e
end type

type(ty5) :: xxx

xxx%a     = 1
xxx%t1%a  = xxx%a

if (xxx%ty4%ty3%ty2%ty1%a.ne.xxx%ty4%ty3%ty2%a) print *,'  line :23  ', xxx%ty4%ty3%ty2%ty1%a, '  ', xxx%ty4%ty3%ty2%a
if (xxx%ty4%ty3%ty2%ty1%a.ne.xxx%ty4%ty3%ty1%a) print *,'  line :24  ', xxx%ty4%ty3%ty2%ty1%a, '  ', xxx%ty4%ty3%ty1%a
if (xxx%ty4%ty3%ty2%ty1%a.ne.xxx%ty4%ty2%ty1%a) print *,'  line :25  ', xxx%ty4%ty3%ty2%ty1%a, '  ', xxx%ty4%ty2%ty1%a
if (xxx%ty4%ty3%ty2%ty1%a.ne.xxx%ty4%ty3%a)     print *,'  line :26  ', xxx%ty4%ty3%ty2%ty1%a, '  ', xxx%ty4%ty3%a
if (xxx%ty4%ty3%ty2%ty1%a.ne.xxx%ty4%ty2%a)     print *,'  line :27  ', xxx%ty4%ty3%ty2%ty1%a, '  ', xxx%ty4%ty2%a
if (xxx%ty4%ty3%ty2%ty1%a.ne.xxx%ty4%ty1%a)     print *,'  line :28  ', xxx%ty4%ty3%ty2%ty1%a, '  ', xxx%ty4%ty1%a
if (xxx%ty4%ty3%ty2%ty1%a.ne.xxx%ty4%a)         print *,'  line :29  ', xxx%ty4%ty3%ty2%ty1%a, '  ', xxx%ty4%a

if (xxx%ty4%ty3%ty2%ty1%a.ne.xxx%ty3%ty2%ty1%a) print *,'  line :31  ', xxx%ty4%ty3%ty2%ty1%a, '  ', xxx%ty3%ty2%ty1%a
if (xxx%ty4%ty3%ty2%ty1%a.ne.xxx%ty3%ty2%a)     print *,'  line :32  ', xxx%ty4%ty3%ty2%ty1%a, '  ', xxx%ty3%ty2%a
if (xxx%ty4%ty3%ty2%ty1%a.ne.xxx%ty3%ty1%a)     print *,'  line :33  ', xxx%ty4%ty3%ty2%ty1%a, '  ', xxx%ty3%ty1%a
if (xxx%ty4%ty3%ty2%ty1%a.ne.xxx%ty3%a)         print *,'  line :34  ', xxx%ty4%ty3%ty2%ty1%a, '  ', xxx%ty3%a

if (xxx%ty4%ty3%ty2%ty1%a.ne.xxx%ty2%ty1%a)     print *,'  line :36  ', xxx%ty4%ty3%ty2%ty1%a, '  ', xxx%ty2%ty1%a
if (xxx%ty4%ty3%ty2%ty1%a.ne.xxx%ty2%a)         print *,'  line :37  ', xxx%ty4%ty3%ty2%ty1%a, '  ', xxx%ty2%a

if (xxx%ty4%ty3%ty2%ty1%a.ne.xxx%ty1%a)         print *,'  line :38  ', xxx%ty4%ty3%ty2%ty1%a, '  ', xxx%ty1%a
if (xxx%ty4%ty3%ty2%ty1%a.ne.xxx%a)             print *,'  line :40  ', xxx%ty4%ty3%ty2%ty1%a, '  ', xxx%a

if (xxx%ty4%ty3%ty2%ty1%a.ne.xxx%ty4%ty3%t1%a)  print *,'  line :42  ', xxx%ty4%ty3%ty2%ty1%a, '  ', xxx%ty4%ty3%t1%a
if (xxx%ty4%ty3%ty2%ty1%a.ne.xxx%ty3%t1%a)      print *,'  line :43  ', xxx%ty4%ty3%ty2%ty1%a, '  ', xxx%ty3%t1%a
if (xxx%ty4%ty3%ty2%ty1%a.ne.xxx%t1%a)          print *,'  line :44  ', xxx%ty4%ty3%ty2%ty1%a, '  ', xxx%t1%a

print *,'pass'

end