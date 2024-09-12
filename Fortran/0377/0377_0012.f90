type ty1
 integer :: t1i = 1
end type
type,extends(ty1) :: ty2
 integer :: t2i = 2
end type
type,extends(ty2) :: ty3
 integer :: t3i = 3
end type
type,extends(ty3) :: ty4
 integer :: t4i = 4
end type
type,extends(ty4) :: ty5
 integer :: t5i = 5
end type
type,extends(ty5) :: ty6
 integer :: t6i = 6
end type
type,extends(ty6) :: ty7
 integer :: t7i = 7
end type
type,extends(ty7) :: ty8
 integer :: t8i = 8
end type

type(ty8) :: tt8

tt8 = ty8()
if (tt8%t1i + tt8%t2i + tt8%t3i + tt8%t4i + tt8%t5i + tt8%t6i + tt8%t7i + tt8%t8i.ne.36 ) print *,'error'

tt8 = ty8(t4i = 0, t3i = 0, t5i = 0)
if (tt8%t1i + tt8%t2i + tt8%t3i + tt8%t4i + tt8%t5i + tt8%t6i + tt8%t7i + tt8%t8i.ne.24 ) print *,'error'

tt8 = ty8(t4i = 5, t3i = 8, t5i = 11)
if (tt8%t1i + tt8%t2i + tt8%t3i + tt8%t4i + tt8%t5i + tt8%t6i + tt8%t7i + tt8%t8i.ne.48 ) print *,'error'

tt8 = ty8(t7i = 0, t2i = 0, t6i = 0, t3i = 0)
if (tt8%t1i + tt8%t2i + tt8%t3i + tt8%t4i + tt8%t5i + tt8%t6i + tt8%t7i + tt8%t8i.ne.18 ) print *,'error'

tt8 = ty8(t7i = 4, t2i = 6, t6i = 10, t3i = 12)
if (tt8%t1i + tt8%t2i + tt8%t3i + tt8%t4i + tt8%t5i + tt8%t6i + tt8%t7i + tt8%t8i.ne.50 ) print *,'error'

tt8 = ty8(t1i = 0, t8i = 0, t4i = 0, t5i = 0)
if (tt8%t1i + tt8%t2i + tt8%t3i + tt8%t4i + tt8%t5i + tt8%t6i + tt8%t7i + tt8%t8i.ne.18 ) print *,'error'

tt8 = ty8(t1i = 15, t8i = 19, t4i = 23, t5i = 25)
if (tt8%t1i + tt8%t2i + tt8%t3i + tt8%t4i + tt8%t5i + tt8%t6i + tt8%t7i + tt8%t8i.ne.100) print *,'error'

tt8 = ty8(t1i = 15, t7i = 4, t8i = 19, t2i = 6, t4i = 9, t6i = 10,  t5i = 25, t3i = 12)
if (tt8%t1i + tt8%t2i + tt8%t3i + tt8%t4i + tt8%t5i + tt8%t6i + tt8%t7i + tt8%t8i.ne.100) print *,'error'

tt8 = ty8(t1i = tt8%t7i, t7i = tt8%t2i, t8i = tt8%t1i, t2i = tt8%t8i, t4i = tt8%t5i, t6i = tt8%t3i,  t5i = tt8%t4i, t3i = tt8%t6i)
if (tt8%t1i + tt8%t2i + tt8%t3i + tt8%t4i + tt8%t5i + tt8%t6i + tt8%t7i + tt8%t8i.ne.100) print *,'error'

print *,'pass'

end
