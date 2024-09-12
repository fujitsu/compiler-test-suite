type ty1
 integer :: t1i4_01 = 0
 integer :: t1i4_02 = 0
end type

type , extends(ty1) :: ty2
 integer :: t2i4_01 = 0
 integer :: t2i4_02 = 0
end type

type , extends(ty2) :: ty3
 integer :: t3i4_01 = 0
 integer :: t3i4_02 = 0
end type

type , extends(ty3) :: ty4
 integer :: t4i4_01 = 0
 integer :: t4i4_02 = 0
end type

type (ty4) :: tt4

tt4 = ty4()
tt4 = ty4(1)
tt4 = ty4(t1i4_01 = 1)

tt4 = ty4(1,                   t1i4_02 = 2)
tt4 = ty4(1, 2,                t2i4_01 = 3)
tt4 = ty4(1, 2, 3,             t2i4_02 = 4)
tt4 = ty4(1, 2, 3, 4,          t3i4_01 = 5)
tt4 = ty4(1, 2, 3, 4, 5,       t3i4_02 = 6)
tt4 = ty4(1, 2, 3, 4, 5, 6,    t4i4_01 = 7)

tt4 = ty4(1, 2, 3, 4, 5, 6, 7, t4i4_02 = 8)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.36) print *,'error'

tt4 = ty4(t1i4_01 = 1, t1i4_02 = 2)
tt4 = ty4(t1i4_01 = 1, t2i4_01 = 3)
tt4 = ty4(t1i4_01 = 1, t2i4_02 = 4)
tt4 = ty4(t1i4_01 = 1, t3i4_01 = 5)
tt4 = ty4(t1i4_01 = 1, t3i4_02 = 6)
tt4 = ty4(t1i4_01 = 1, t4i4_01 = 7)
tt4 = ty4(t1i4_01 = 1, t4i4_02 = 8)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.9) print *,'error'

tt4 = ty4(                  t1i4_02 = 2, t4i4_02 = 8)
tt4 = ty4(1,                t1i4_02 = 2, t4i4_02 = 8)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.11) print *,'error'

tt4 = ty4(                  t2i4_01 = 3, t4i4_02 = 8)
tt4 = ty4(1,                t2i4_01 = 3, t4i4_02 = 8)
tt4 = ty4(1, 2,             t2i4_01 = 3, t4i4_02 = 8)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.14) print *,'error'

tt4 = ty4(                  t2i4_02 = 4, t4i4_02 = 8)
tt4 = ty4(1,                t2i4_02 = 4, t4i4_02 = 8)
tt4 = ty4(1, 2,             t2i4_02 = 4, t4i4_02 = 8)
tt4 = ty4(1, 2, 3,          t2i4_02 = 4, t4i4_02 = 8)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.18) print *,'error'

tt4 = ty4(                  t3i4_01 = 5, t4i4_02 = 8)
tt4 = ty4(1,                t3i4_01 = 5, t4i4_02 = 8)
tt4 = ty4(1, 2,             t3i4_01 = 5, t4i4_02 = 8)
tt4 = ty4(1, 2, 3,          t3i4_01 = 5, t4i4_02 = 8)
tt4 = ty4(1, 2, 3, 4,       t3i4_01 = 5, t4i4_02 = 8)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.23) print *,'error'

tt4 = ty4(                  t3i4_02 = 6, t4i4_02 = 8)
tt4 = ty4(1,                t3i4_02 = 6, t4i4_02 = 8)
tt4 = ty4(1, 2,             t3i4_02 = 6, t4i4_02 = 8)
tt4 = ty4(1, 2, 3,          t3i4_02 = 6, t4i4_02 = 8)
tt4 = ty4(1, 2, 3, 4,       t3i4_02 = 6, t4i4_02 = 8)
tt4 = ty4(1, 2, 3, 4, 5,    t3i4_02 = 6, t4i4_02 = 8)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.29) print *,'error'

tt4 = ty4(                  t4i4_01 = 7, t4i4_02 = 8)
tt4 = ty4(1,                t4i4_01 = 7, t4i4_02 = 8)
tt4 = ty4(1, 2,             t4i4_01 = 7, t4i4_02 = 8)
tt4 = ty4(1, 2, 3,          t4i4_01 = 7, t4i4_02 = 8)
tt4 = ty4(1, 2, 3, 4,       t4i4_01 = 7, t4i4_02 = 8)
tt4 = ty4(1, 2, 3, 4, 5,    t4i4_01 = 7, t4i4_02 = 8)
tt4 = ty4(1, 2, 3, 4, 5, 6, t4i4_01 = 7, t4i4_02 = 8)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.36) print *,'error'

tt4 = ty4(t1i4_02 = 2, t1i4_01 = 1)
tt4 = ty4(t2i4_01 = 3, t1i4_01 = 1)
tt4 = ty4(t2i4_02 = 4, t1i4_01 = 1)
tt4 = ty4(t3i4_01 = 5, t1i4_01 = 1)
tt4 = ty4(t3i4_02 = 6, t1i4_01 = 1)
tt4 = ty4(t4i4_01 = 7, t1i4_01 = 1)
tt4 = ty4(t4i4_02 = 8, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.9) print *,'error'

tt4 = ty4(t4i4_02 = 8, t1i4_02 = 2)
tt4 = ty4(t4i4_02 = 8, t1i4_02 = 2, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.11) print *,'error'

tt4 = ty4(t4i4_02 = 8, t2i4_01 = 3)
tt4 = ty4(t4i4_02 = 8, t2i4_01 = 3, t1i4_01 = 1)
tt4 = ty4(t4i4_02 = 8, t2i4_01 = 3, t1i4_02 = 2)
tt4 = ty4(t4i4_02 = 8, t2i4_01 = 3, t1i4_02 = 2, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.14) print *,'error'

tt4 = ty4(t4i4_02 = 8, t2i4_02 = 4)
tt4 = ty4(t4i4_02 = 8, t2i4_02 = 4, t1i4_01 = 1)
tt4 = ty4(t4i4_02 = 8, t2i4_02 = 4, t1i4_02 = 2)
tt4 = ty4(t4i4_02 = 8, t2i4_02 = 4, t1i4_02 = 2, t1i4_01 = 1)
tt4 = ty4(t4i4_02 = 8, t2i4_02 = 4, t2i4_01 = 3)
tt4 = ty4(t4i4_02 = 8, t2i4_02 = 4, t2i4_01 = 3, t1i4_01 = 1)
tt4 = ty4(t4i4_02 = 8, t2i4_02 = 4, t2i4_01 = 3, t1i4_02 = 2)
tt4 = ty4(t4i4_02 = 8, t2i4_02 = 4, t2i4_01 = 3, t1i4_02 = 2, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.18) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_01 = 5)
tt4 = ty4(t4i4_02 = 8, t3i4_01 = 5, t1i4_01 = 1)
tt4 = ty4(t4i4_02 = 8, t3i4_01 = 5, t1i4_02 = 2)
tt4 = ty4(t4i4_02 = 8, t3i4_01 = 5, t1i4_02 = 2, t1i4_01 = 1)
tt4 = ty4(t4i4_02 = 8, t3i4_01 = 5, t2i4_01 = 3)
tt4 = ty4(t4i4_02 = 8, t3i4_01 = 5, t2i4_01 = 3, t1i4_01 = 1)
tt4 = ty4(t4i4_02 = 8, t3i4_01 = 5, t2i4_01 = 3, t1i4_02 = 2)
tt4 = ty4(t4i4_02 = 8, t3i4_01 = 5, t2i4_01 = 3, t1i4_02 = 2, t1i4_01 = 1)
tt4 = ty4(t4i4_02 = 8, t3i4_01 = 5, t2i4_02 = 4)
tt4 = ty4(t4i4_02 = 8, t3i4_01 = 5, t2i4_02 = 4, t1i4_01 = 1)
tt4 = ty4(t4i4_02 = 8, t3i4_01 = 5, t2i4_02 = 4, t1i4_02 = 2)
tt4 = ty4(t4i4_02 = 8, t3i4_01 = 5, t2i4_02 = 4, t1i4_02 = 2, t1i4_01 = 1)
tt4 = ty4(t4i4_02 = 8, t3i4_01 = 5, t2i4_02 = 4, t2i4_01 = 3)
tt4 = ty4(t4i4_02 = 8, t3i4_01 = 5, t2i4_02 = 4, t2i4_01 = 3, t1i4_01 = 1)
tt4 = ty4(t4i4_02 = 8, t3i4_01 = 5, t2i4_02 = 4, t2i4_01 = 3, t1i4_02 = 2)
tt4 = ty4(t4i4_02 = 8, t3i4_01 = 5, t2i4_02 = 4, t2i4_01 = 3, t1i4_02 = 2, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.23) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.14) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.15) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t1i4_02 = 2)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.16) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t1i4_02 = 2, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.17) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t2i4_01 = 3)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.17) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t2i4_01 = 3, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.18) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t2i4_01 = 3, t1i4_02 = 2)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.19) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t2i4_01 = 3, t1i4_02 = 2, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.20) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t2i4_02 = 4)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.18) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t2i4_02 = 4, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.19) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t2i4_02 = 4, t1i4_02 = 2)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.20) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t2i4_02 = 4, t1i4_02 = 2, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.21) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t2i4_02 = 4, t2i4_01 = 3)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.21) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t2i4_02 = 4, t2i4_01 = 3, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.22) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t2i4_02 = 4, t2i4_01 = 3, t1i4_02 = 2)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.23) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t2i4_02 = 4, t2i4_01 = 3, t1i4_02 = 2, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.24) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t3i4_01 = 5)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.19) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t3i4_01 = 5, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.20) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t3i4_01 = 5, t1i4_02 = 2)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.21) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t3i4_01 = 5, t1i4_02 = 2, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.22) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t3i4_01 = 5, t2i4_01 = 3)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.22) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t3i4_01 = 5, t2i4_01 = 3, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.23) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t3i4_01 = 5, t2i4_01 = 3, t1i4_02 = 2)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.24) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t3i4_01 = 5, t2i4_01 = 3, t1i4_02 = 2, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.25) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t3i4_01 = 5, t2i4_02 = 4)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.23) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t3i4_01 = 5, t2i4_02 = 4, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.24) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t3i4_01 = 5, t2i4_02 = 4, t1i4_02 = 2)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.25) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t3i4_01 = 5, t2i4_02 = 4, t1i4_02 = 2, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.26) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t3i4_01 = 5, t2i4_02 = 4, t2i4_01 = 3)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.26) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t3i4_01 = 5, t2i4_02 = 4, t2i4_01 = 3, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.27) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t3i4_01 = 5, t2i4_02 = 4, t2i4_01 = 3, t1i4_02 = 2)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.28) print *,'error'

tt4 = ty4(t4i4_02 = 8, t3i4_02 = 6, t3i4_01 = 5, t2i4_02 = 4, t2i4_01 = 3, t1i4_02 = 2, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.29) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.15) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.16) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t1i4_02 = 2)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.17) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t1i4_02 = 2, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.18) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t2i4_01 = 3)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.18) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t2i4_01 = 3, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.19) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t2i4_01 = 3, t1i4_02 = 2)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.20) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t2i4_01 = 3, t1i4_02 = 2, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.21) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t2i4_02 = 4)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.19) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t2i4_02 = 4, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.20) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t2i4_02 = 4, t1i4_02 = 2)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.21) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t2i4_02 = 4, t1i4_02 = 2, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.22) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t2i4_02 = 4, t2i4_01 = 3)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.22) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t2i4_02 = 4, t2i4_01 = 3, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.23) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t2i4_02 = 4, t2i4_01 = 3, t1i4_02 = 2)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.24) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t2i4_02 = 4, t2i4_01 = 3, t1i4_02 = 2, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.25) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_01 = 5)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.20) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_01 = 5, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.21) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_01 = 5, t1i4_02 = 2)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.22) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_01 = 5, t1i4_02 = 2, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.23) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_01 = 5, t2i4_01 = 3)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.23) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_01 = 5, t2i4_01 = 3, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.24) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_01 = 5, t2i4_01 = 3, t1i4_02 = 2)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.25) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_01 = 5, t2i4_01 = 3, t1i4_02 = 2, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.26) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_01 = 5, t2i4_02 = 4)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.24) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_01 = 5, t2i4_02 = 4, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.25) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_01 = 5, t2i4_02 = 4, t1i4_02 = 2)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.26) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_01 = 5, t2i4_02 = 4, t1i4_02 = 2, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.27) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_01 = 5, t2i4_02 = 4, t2i4_01 = 3)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.27) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_01 = 5, t2i4_02 = 4, t2i4_01 = 3, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.28) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_01 = 5, t2i4_02 = 4, t2i4_01 = 3, t1i4_02 = 2)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.29) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_01 = 5, t2i4_02 = 4, t2i4_01 = 3, t1i4_02 = 2, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.30) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.21) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.22) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t1i4_02 = 2)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.23) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t1i4_02 = 2, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.24) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t2i4_01 = 3)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.24) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t2i4_01 = 3, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.25) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t2i4_01 = 3, t1i4_02 = 2)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.26) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t2i4_01 = 3, t1i4_02 = 2, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.27) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t2i4_02 = 4)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.25) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t2i4_02 = 4, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.26) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t2i4_02 = 4, t1i4_02 = 2)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.27) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t2i4_02 = 4, t1i4_02 = 2, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.28) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t2i4_02 = 4, t2i4_01 = 3)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.28) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t2i4_02 = 4, t2i4_01 = 3, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.29) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t2i4_02 = 4, t2i4_01 = 3, t1i4_02 = 2)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.30) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t2i4_02 = 4, t2i4_01 = 3, t1i4_02 = 2, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.31) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t3i4_01 = 5)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.26) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t3i4_01 = 5, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.27) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t3i4_01 = 5, t1i4_02 = 2)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.28) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t3i4_01 = 5, t1i4_02 = 2, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.29) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t3i4_01 = 5, t2i4_01 = 3)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.29) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t3i4_01 = 5, t2i4_01 = 3, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.30) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t3i4_01 = 5, t2i4_01 = 3, t1i4_02 = 2)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.31) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t3i4_01 = 5, t2i4_01 = 3, t1i4_02 = 2, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.32) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t3i4_01 = 5, t2i4_02 = 4)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.30) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t3i4_01 = 5, t2i4_02 = 4, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.31) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t3i4_01 = 5, t2i4_02 = 4, t1i4_02 = 2)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.32) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t3i4_01 = 5, t2i4_02 = 4, t1i4_02 = 2, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.33) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t3i4_01 = 5, t2i4_02 = 4, t2i4_01 = 3)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.33) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t3i4_01 = 5, t2i4_02 = 4, t2i4_01 = 3, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.34) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t3i4_01 = 5, t2i4_02 = 4, t2i4_01 = 3, t1i4_02 = 2)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.35) print *,'error'

tt4 = ty4(t4i4_02 = 8, t4i4_01 = 7, t3i4_02 = 6, t3i4_01 = 5, t2i4_02 = 4, t2i4_01 = 3, t1i4_02 = 2, t1i4_01 = 1)

if (tt4%t1i4_01 + tt4%t1i4_02 + tt4%t2i4_01 + tt4%t2i4_02 + tt4%t3i4_01 + tt4%t3i4_02 + tt4%t4i4_01 + tt4%t4i4_02.ne.36) print *,'error'

print *,'pass'

end
