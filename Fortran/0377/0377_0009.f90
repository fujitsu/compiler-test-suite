type ty1
 real :: a
 real :: b
end type

type , extends(ty1) :: ty2
 real :: c
 real :: d
end type

type , extends(ty2) :: ty3
 
end type

type , extends(ty3) :: ty4
 
end type

type , extends(ty4) :: ty5
 
end type

type(ty5) :: ttt

ttt%ty2%a     = 1.0

ttt%ty2%ty1%b = 2.0

ttt%ty2%c     = 3.0

ttt%ty3%d     = 4.0

if (ttt%ty4%ty3%ty2%ty1%a.eq.ttt%ty4%ty3%ty2%ty1%b) print *,'error'
if (ttt%ty4%ty3%ty2%ty1%a.eq.ttt%ty4%ty3%ty2%ty1%b) print *,'error'
if (ttt%ty4%ty3%ty2%ty1%a.eq.ttt%ty4%ty3%ty2%c)     print *,'error'
if (ttt%ty4%ty3%ty2%ty1%a.eq.ttt%ty4%ty3%ty2%d)     print *,'error'
if (ttt%ty4%ty3%ty2%ty1%b.eq.ttt%ty4%ty3%ty2%c)     print *,'error'
if (ttt%ty4%ty3%ty2%ty1%b.eq.ttt%ty4%ty3%ty2%d)     print *,'error'
if (ttt%ty4%ty3%ty2%c    .eq.ttt%ty4%ty3%ty2%d)     print *,'error'

if (ttt%a.eq.ttt%b) print *,'error'
if (ttt%a.eq.ttt%c) print *,'error'
if (ttt%a.eq.ttt%d) print *,'error'
if (ttt%b.eq.ttt%c) print *,'error'
if (ttt%b.eq.ttt%d) print *,'error'
if (ttt%c.eq.ttt%d) print *,'error'

print *,'pass'

end
