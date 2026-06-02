module mod01
 type m01ty1
  integer               :: m01ty1_i401 = 111
  integer     , private :: m01ty1_i402 = 112
  real                  :: m01ty1_r401 = 11.1
  real        , private :: m01ty1_r402 = 11.2
  complex               :: m01ty1_c401 = (11.1, 11.1)
  complex     , private :: m01ty1_c402 = (11.2, 11.2)
  logical               :: m01ty1_l401 = .false.
  logical     , private :: m01ty1_l402 = .false.
  character             :: m01ty1_s101 = '1'
  character   , private :: m01ty1_s102 = '2'
  character(3)          :: m01ty1_s301 = '111'
  character(3), private :: m01ty1_s302 = '112'
 end type
 type m01tyA
  integer               :: m01tyA_i401 = 111
  integer     , private :: m01tyA_i402 = 112
  real                  :: m01tyA_r401 = 11.1
  real        , private :: m01tyA_r402 = 11.2
  complex               :: m01tyA_c401 = (11.1, 11.1)
  complex     , private :: m01tyA_c402 = (11.2, 11.2)
  logical               :: m01tyA_l401 = .false.
  logical     , private :: m01tyA_l402 = .false.
  character             :: m01tyA_s101 = '1'
  character   , private :: m01tyA_s102 = '2'
  character(3)          :: m01tyA_s301 = '111'
  character(3), private :: m01tyA_s302 = '112'
 end type
 type,extends(m01ty1) :: m01ty2
  integer               :: m01ty2_i401 = 121
  integer     , private :: m01ty2_i402 = 122
  real                  :: m01ty2_r401 = 12.1
  real        , private :: m01ty2_r402 = 12.2
  complex               :: m01ty2_c401 = (12.1, 12.1)
  complex     , private :: m01ty2_c402 = (12.2, 12.2)
  logical               :: m01ty2_l401 = .false.
  logical     , private :: m01ty2_l402 = .false.
  character             :: m01ty2_s101 = '1'
  character   , private :: m01ty2_s102 = '2'
  character(3)          :: m01ty2_s301 = '121'
  character(3), private :: m01ty2_s302 = '122'
 end type
 type,extends(m01tyA) :: m01tyB
  integer               :: m01tyB_i401 = 121
  integer     , private :: m01tyB_i402 = 122
  real                  :: m01tyB_r401 = 12.1
  real        , private :: m01tyB_r402 = 12.2
  complex               :: m01tyB_c401 = (12.1, 12.1)
  complex     , private :: m01tyB_c402 = (12.2, 12.2)
  logical               :: m01tyB_l401 = .false.
  logical     , private :: m01tyB_l402 = .false.
  character             :: m01tyB_s101 = '1'
  character   , private :: m01tyB_s102 = '2'
  character(3)          :: m01tyB_s301 = '121'
  character(3), private :: m01tyB_s302 = '122'
 end type
end module

module mod02
use mod01
 type,extends(m01ty2) :: m02ty1
  integer               :: m02ty1_i401 = 211
  integer     , private :: m02ty1_i402 = 212
  real                  :: m02ty1_r401 = 21.1
  real        , private :: m02ty1_r402 = 21.2
  complex               :: m02ty1_c401 = (21.1, 21.1)
  complex     , private :: m02ty1_c402 = (21.2, 21.2)
  logical               :: m02ty1_l401 = .false.
  logical     , private :: m02ty1_l402 = .false.
  character             :: m02ty1_s101 = '1'
  character   , private :: m02ty1_s102 = '2'
  character(3)          :: m02ty1_s301 = '211'
  character(3), private :: m02ty1_s302 = '212'
 end type
 type,extends(m01tyB) :: m02tyA
  integer               :: m02tyA_i401 = 211
  integer     , private :: m02tyA_i402 = 212
  real                  :: m02tyA_r401 = 21.1
  real        , private :: m02tyA_r402 = 21.2
  complex               :: m02tyA_c401 = (21.1, 21.1)
  complex     , private :: m02tyA_c402 = (21.2, 21.2)
  logical               :: m02tyA_l401 = .false.
  logical     , private :: m02tyA_l402 = .false.
  character             :: m02tyA_s101 = '1'
  character   , private :: m02tyA_s102 = '2'
  character(3)          :: m02tyA_s301 = '211'
  character(3), private :: m02tyA_s302 = '212'
 end type
 type,extends(m02ty1) :: m02ty2
  integer               :: m02ty2_i401 = 221
  integer     , private :: m02ty2_i402 = 222
  real                  :: m02ty2_r401 = 22.1
  real        , private :: m02ty2_r402 = 22.2
  complex               :: m02ty2_c401 = (22.1, 22.1)
  complex     , private :: m02ty2_c402 = (22.2, 22.2)
  logical               :: m02ty2_l401 = .false.
  logical     , private :: m02ty2_l402 = .false.
  character             :: m02ty2_s101 = '1'
  character   , private :: m02ty2_s102 = '2'
  character(3)          :: m02ty2_s301 = '221'
  character(3), private :: m02ty2_s302 = '222'
 end type
 type,extends(m02tyA) :: m02tyB
  integer               :: m02tyB_i401 = 221
  integer     , private :: m02tyB_i402 = 222
  real                  :: m02tyB_r401 = 22.1
  real        , private :: m02tyB_r402 = 22.2
  complex               :: m02tyB_c401 = (22.1, 22.1)
  complex     , private :: m02tyB_c402 = (22.2, 22.2)
  logical               :: m02tyB_l401 = .false.
  logical     , private :: m02tyB_l402 = .false.
  character             :: m02tyB_s101 = '1'
  character   , private :: m02tyB_s102 = '2'
  character(3)          :: m02tyB_s301 = '221'
  character(3), private :: m02tyB_s302 = '222'
 end type
end module

module mod03
 use mod02
 type,extends(m02ty2) :: m03ty1
  integer               :: m03ty1_i401 = 311
  integer     , private :: m03ty1_i402 = 312
  real                  :: m03ty1_r401 = 31.1
  real        , private :: m03ty1_r402 = 31.2
  complex               :: m03ty1_c401 = (31.1, 31.1)
  complex     , private :: m03ty1_c402 = (31.2, 31.2)
  logical               :: m03ty1_l401 = .false.
  logical     , private :: m03ty1_l402 = .false.
  character             :: m03ty1_s101 = '1'
  character   , private :: m03ty1_s102 = '2'
  character(3)          :: m03ty1_s301 = '311'
  character(3), private :: m03ty1_s302 = '312'
 end type
 type,extends(m02tyB) :: m03tyA
  integer               :: m03tyA_i401 = 311
  integer     , private :: m03tyA_i402 = 312
  real                  :: m03tyA_r401 = 31.1
  real        , private :: m03tyA_r402 = 31.2
  complex               :: m03tyA_c401 = (31.1, 31.1)
  complex     , private :: m03tyA_c402 = (31.2, 31.2)
  logical               :: m03tyA_l401 = .false.
  logical     , private :: m03tyA_l402 = .false.
  character             :: m03tyA_s101 = '1'
  character   , private :: m03tyA_s102 = '2'
  character(3)          :: m03tyA_s301 = '311'
  character(3), private :: m03tyA_s302 = '312'
 end type
 type,extends(m03ty1) :: m03ty2
  integer               :: m03ty2_i401 = 321
  integer     , private :: m03ty2_i402 = 322
  real                  :: m03ty2_r401 = 32.1
  real        , private :: m03ty2_r402 = 32.2
  complex               :: m03ty2_c401 = (32.1, 32.1)
  complex     , private :: m03ty2_c402 = (32.2, 32.2)
  logical               :: m03ty2_l401 = .false.
  logical     , private :: m03ty2_l402 = .false.
  character             :: m03ty2_s101 = '1'
  character   , private :: m03ty2_s102 = '2'
  character(3)          :: m03ty2_s301 = '321'
  character(3), private :: m03ty2_s302 = '322'
 end type
 type,extends(m03tyA) :: m03tyB
  integer               :: m03tyB_i401 = 321
  integer     , private :: m03tyB_i402 = 322
  real                  :: m03tyB_r401 = 32.1
  real        , private :: m03tyB_r402 = 32.2
  complex               :: m03tyB_c401 = (32.1, 32.1)
  complex     , private :: m03tyB_c402 = (32.2, 32.2)
  logical               :: m03tyB_l401 = .false.
  logical     , private :: m03tyB_l402 = .false.
  character             :: m03tyB_s101 = '1'
  character   , private :: m03tyB_s102 = '2'
  character(3)          :: m03tyB_s301 = '321'
  character(3), private :: m03tyB_s302 = '322'
 end type
end module

use mod03

 type,extends(m03ty2) :: ty1
  integer               :: ty1_i401 = 111
  real                  :: ty1_r401 = 11.1
  complex               :: ty1_c401 = (11.1, 11.1)
  logical               :: ty1_l401 = .false.
  character             :: ty1_s101 = '1'
  character(3)          :: ty1_s301 = '111'
 end type
 type,extends(m03tyB) :: tyA
  integer               :: tyA_i401 = 111
  real                  :: tyA_r401 = 11.1
  complex               :: tyA_c401 = (11.1, 11.1)
  logical               :: tyA_l401 = .false.
  character             :: tyA_s101 = '1'
  character(3)          :: tyA_s301 = '111'
 end type
 type,extends(ty1) :: ty2
  integer               :: ty2_i401 = 121
  real                  :: ty2_r401 = 12.1
  complex               :: ty2_c401 = (12.1, 12.1)
  logical               :: ty2_l401 = .false.
  character             :: ty2_s101 = '1'
  character(3)          :: ty2_s301 = '121'
 end type
 type,extends(tyA) :: tyB
  integer               :: tyB_i401 = 121
  real                  :: tyB_r401 = 12.1
  complex               :: tyB_c401 = (12.1, 12.1)
  logical               :: tyB_l401 = .false.
  character             :: tyB_s101 = '1'
  character(3)          :: tyB_s301 = '121'
 end type

type(m01ty1) :: m1t1
type(m01tyA) :: m1ta
type(m01ty2) :: m1t2
type(m01tyB) :: m1tb
type(m02ty1) :: m2t1
type(m02tyA) :: m2ta
type(m02ty2) :: m2t2
type(m02tyB) :: m2tb
type(m03ty1) :: m3t1
type(m03tyA) :: m3ta
type(m03ty2) :: m3t2
type(m03tyB) :: m3tb
type (ty1)   :: t1
type (tyA)   :: ta
type (ty2)   :: t2
type (tyB)   :: tb

m1t1 = m01ty1()
m1ta = m01tyA()
m1t2 = m01ty2()
m1tb = m01tyB()
m2t1 = m02ty1()
m2ta = m02tyA()
m2t2 = m02ty2()
m2tb = m02tyB()
m3t1 = m03ty1()
m3ta = m03tyA()
m3t2 = m03ty2()
m3tb = m03tyB()
t1   = ty1()
ta   = tyA()
t2   = ty2()
tb   = tyB()

t2   = ty2(t1)
t2   = ty2(m3t2)
t2   = ty2(m3t1)
t2   = ty2(m2t2)
t2   = ty2(m2t1)
t2   = ty2(m1t2)
t2   = ty2(m1t1)

t2   = ty2(ty1())
t2   = ty2(ty1(m3t2))
t2   = ty2(ty1(m3t1))
t2   = ty2(ty1(m2t2))
t2   = ty2(ty1(m2t1))
t2   = ty2(ty1(m1t2))
t2   = ty2(ty1(m1t1))

t2   = ty2(m03ty2())
t2   = ty2(m03ty2(m3t1))
t2   = ty2(m03ty2(m2t2))
t2   = ty2(m03ty2(m2t1))
t2   = ty2(m03ty2(m1t2))
t2   = ty2(m03ty2(m1t1))

t2   = ty2(m03ty1())
t2   = ty2(m03ty1(m2t2))
t2   = ty2(m03ty1(m2t1))
t2   = ty2(m03ty1(m1t2))
t2   = ty2(m03ty1(m1t1))

t2   = ty2(m02ty2())
t2   = ty2(m02ty2(m2t1))
t2   = ty2(m02ty2(m1t2))
t2   = ty2(m02ty2(m1t1))

t2   = ty2(m02ty1())
t2   = ty2(m02ty1(m1t2))
t2   = ty2(m02ty1(m1t1))

t2   = ty2(m01ty2())
t2   = ty2(m01ty2(m1t1))

t2   = ty2(m01ty1())

tb   = tyB(ta)
tb   = tyB(m3tb)
tb   = tyB(m3ta)
tb   = tyB(m2tb)
tb   = tyB(m2ta)
tb   = tyB(m1tb)
tb   = tyB(m1ta)

tb   = tyB(tyA())
tb   = tyB(tyA(m3tb))
tb   = tyB(tyA(m3ta))
tb   = tyB(tyA(m2tb))
tb   = tyB(tyA(m2ta))
tb   = tyB(tyA(m1tb))
tb   = tyB(tyA(m1ta))

tb   = tyB(m03tyB())
tb   = tyB(m03tyB(m3ta))
tb   = tyB(m03tyB(m2tb))
tb   = tyB(m03tyB(m2ta))
tb   = tyB(m03tyB(m1tb))
tb   = tyB(m03tyB(m1ta))

tb   = tyB(m03tyA())
tb   = tyB(m03tyA(m2tb))
tb   = tyB(m03tyA(m2ta))
tb   = tyB(m03tyA(m1tb))
tb   = tyB(m03tyA(m1ta))

tb   = tyB(m02tyB())
tb   = tyB(m02tyB(m2ta))
tb   = tyB(m02tyB(m1tb))
tb   = tyB(m02tyB(m1ta))

tb   = tyB(m02tyA())
tb   = tyB(m02tyA(m1tb))
tb   = tyB(m02tyA(m1ta))

tb   = tyB(m01tyB())
tb   = tyB(m01tyB(m1ta))

tb   = tyB(m01tyA())

print *,'pass'

end
