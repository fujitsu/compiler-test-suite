module mod1
 type mty1
  integer           :: mi1 = 1
  real              :: mr1 = 2.0
  complex           :: mc1 = (3.0, 3.0)
  logical           :: ml1 = .false.
  character         :: ms1 = '5'
  character,private :: ms2 = '6'
  logical  ,private :: ml2 = .false.
  complex  ,private :: mc2 = (8.0, 8.0)
  real     ,private :: mr2 = 9.0
  integer  ,private :: mi2 = 10
 end type
 type,extends(mty1) :: mty2
  integer  ,pointer         :: mi1p => null()
  integer  ,pointer,private :: mi2p => null()
  real     ,pointer         :: mr1p => null()
  real     ,pointer,private :: mr2p => null()
  complex  ,pointer         :: mc1p => null()
  complex  ,pointer,private :: mc2p => null()
  logical  ,pointer         :: ml1p => null()
  logical  ,pointer,private :: ml2p => null()
  character,pointer         :: ms1p => null()
  character,pointer,private :: ms2p => null()
 end type
 type,extends(mty2) :: mty3
  character,private :: mss1 = 'o'
  logical  ,private :: mll1 = .false.
  complex  ,private :: mcc1 = (13.0, 13.0)
  real     ,private :: mrr1 = 12.0
  integer  ,private :: mii1 = 11
  integer           :: mii2 = 20
  real              :: mrr2 = 19.0
  complex           :: mcc2 = (18.0, 18.0)
  logical           :: mll2 = .false.
  character         :: mss2 = 'P'
 end type
 type,extends(mty3) :: mty4
  integer  ,pointer,private :: mii1p => null()
  integer  ,pointer         :: mii2p => null()
  real     ,pointer,private :: mrr1p => null()
  real     ,pointer         :: mrr2p => null()
  complex  ,pointer,private :: mcc1p => null()
  complex  ,pointer         :: mcc2p => null()
  logical  ,pointer,private :: mll1p => null()
  logical  ,pointer         :: mll2p => null()
  character,pointer,private :: mss1p => null()
  character,pointer         :: mss2p => null()
 end type
 contains
  function m1func1() result(rst)
   type (mty4) :: rst
   rst%mii2p => null()
  end function
  function m1func2() result(rst)
   type (mty3) :: rst
   rst%mss1 = 'x'
  end function
  function m1func3() result(rst)
   type (mty2) :: rst
   rst%mi2p => null()
  end function
  function m1func4() result(rst)
   type (mty1) :: rst
   rst%mr1 = 7.0
  end function
end module

use mod1

type, extends(mty2) :: ty0
 integer   :: i0 = 1
 real      :: r0 = 2.0
 complex   :: c0 = (3.0, 3.0)
 logical   :: l0 = .false.
 character :: s0 = 'e'
end type

type, extends(mty3) :: ty1
 character :: s1 = 'J'
 logical   :: l1 = .false.
 complex   :: c1 = (8.0, 8.0)
 real      :: r1 = 7.0
 integer   :: i1 = 6
end type

type, extends(mty4) :: ty2
 integer   :: i2 = 11
 real      :: r2 = 12.0
 complex   :: c2 = (13.0, 13.0)
 logical   :: l2 = .false.
 character :: s2 = 'o' 
end type

type, extends(ty2)  :: ty3
 character :: s3 = 'T'
 logical   :: l3 = .false.
 complex   :: c3 = (18.0, 18.0)
 real      :: r3 = 17.0
 integer   :: i3 = 16
end type

type, extends(ty3) :: ty4
 type(ty0) :: t0
 type(ty1) :: t1
end type

type (ty4) :: t4

t4%t0 = ty0()

t4 = ty4(ty2(), 'a', .true., (1.0, 1.0), 2.0, 3, t0 = ty0(), t1 = ty1())

t4 = ty4(ty2 = ty2(), s3 = 'a', l3 = .true., c3 = (2.0, 4.0), r3 = 2.0, i3 = 3, t0 = ty0(), t1 = ty1())

t4 = ty4(t1 = ty1(), s3 = 'a', t0 = ty0(), c3 = (2.0, 4.0), l3 = .true.,  r3 = 2.0, i3 = 3, ty2 = ty2())

t4 = ty4(t1 = ty1(), s3 = 'a', t0 = ty0(), mc1 = (2.0, 4.0), l2 = .true.,  mrr2 = 2.0, mi1 = 3, s2 = '1')

t4 = ty4(ty3(), ty0(), ty1())

t4 = ty4(ty3(ty2()), ty0(), ty1())

t4 = ty4(ty2(), 'b', .true., (4.0, 4.0), 8.0, 10, ty0(), ty1())

t4 = ty4(mty4(), 1, 2.0, (3.0, 3.0), .true., 'a', 'b', .true., (4.0, 4.0), 8.0, 10, ty0(), ty1())

t4 = ty4(mty4(m1func2()), 1, 2.0, (3.0, 3.0), .true., 'a', 'b', .true., (4.0, 4.0), 8.0, 10, ty0(m1func3()), ty1(m1func2()))

t4 = ty4(mty4(mty3(mty2(m1func4()))), 1, 2.0, (3.0, 3.0), .true., 'a', 'b', .true., (4.0, 4.0), 8.0, 10, ty0(m1func3()), ty1(mty3(m1func3())))

t4 = ty4(m1func1(), 1, 2.0, (3.0, 3.0), .true., 'a', 'b', .true., (4.0, 4.0), 8.0, 10, ty0(), ty1())

t4 = ty4(t1 = ty1() , t0 = ty0())

if (t4%t1%mty1%mi1.ne.1) print *,'error'
if (t4%mii2.ne.20)       print *,'error'

print *,'pass'

end
