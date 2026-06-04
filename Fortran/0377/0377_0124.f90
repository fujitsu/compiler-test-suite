module mod01
 type ty1
  integer         :: t1i401 = 1
  real,private    :: t1r401 = 2.0
  integer,private :: t1i402 = 3
  integer         :: t1i403 = 4
 end type
 type , extends(ty1) :: ty2
  integer         :: t2i401 = 5
  complex,private :: t2c401 = (6.0, 6.0)
  integer         :: t2i402 = 7
  integer,private :: t2i403 = 8
 end type
 type , extends(ty2) :: ty3
  integer         :: t3i401 = 9
  logical,private :: t3l401 = .true.
  integer,private :: t3i402 = 11
  integer         :: t3i403 = 12
 end type
 type , extends(ty3) :: ty4
  integer           :: t4i401 = 13
  character,private :: t4s401 = 'K'
  integer           :: t4i402 = 15
  integer,private   :: t4i403 = 16
 end type
 type (ty4),save :: tt4

 contains
  function m1func1() result(rst)
   integer :: rst
   rst = tt4%t1i401 + tt4%t1i402 + tt4%t1i403 + tt4%t2i401 + tt4%t2i402 + tt4%t2i403
   rst = rst + tt4%t3i401 + tt4%t3i402 + tt4%t3i403 + tt4%t4i401 + tt4%t4i402 + tt4%t4i403
  end function
end module


use mod01

print *,m1func1()

tt4 = ty4(t4i402 = 1, t1i403 = 2, t3i403 = 4, t4i401 = 5, t2i402 = 3)

print *,m1func1()

tt4 = ty4(t4i402 = 8, t1i401 = 1, t3i403 = 6, t2i402 = 5, t1i403 = 2, t3i401 = 3, t2i401 = 4, t4i401 = 7)

print *,m1func1()

tt4 = ty4()

print *,m1func1()

tt4 = ty4(ty1(), 1)

tt4 = ty4(ty3(ty2(ty1())))

end
