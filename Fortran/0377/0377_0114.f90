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

type(m01ty2) :: m1t2
type(m01tyB) :: m1tb
type(m02ty2) :: m2t2
type(m02tyB) :: m2tb
type(m03ty2) :: m3t2
type(m03tyB) :: m3tb
type (ty2)   :: t2
type (tyB)   :: tb

m1t2 = m01ty2()
m1tb = m01tyB()
m2t2 = m02ty2()
m2tb = m02tyB()
m3t2 = m03ty2()
m3tb = m03tyB()

t2   = ty2()
tb   = tyB()

if (t2%ty2_i401   .ne.  t2%m01ty2_i401) print *, 'error  line  234'
if (t2%ty2_r401   .ne.  t2%m01ty2_r401) print *, 'error  line  235'
if (t2%ty2_c401   .ne.  t2%m01ty2_c401) print *, 'error  line  236'
if (t2%ty2_l401   .neqv.t2%m01ty2_l401) print *, 'error  line  237'
if (t2%ty2_s101   .ne.  t2%m01ty2_s101) print *, 'error  line  238'
if (t2%ty2_s301   .ne.  t2%m01ty2_s301) print *, 'error  line  239'

if (tb%tyB_i401   .ne.  tb%m01tyB_i401) print *, 'error  line  241'
if (tb%tyB_r401   .ne.  tb%m01tyB_r401) print *, 'error  line  242'
if (tb%tyB_c401   .ne.  tb%m01tyB_c401) print *, 'error  line  243'
if (tb%tyB_l401   .neqv.tb%m01tyB_l401) print *, 'error  line  244'
if (tb%tyB_s101   .ne.  tb%m01tyB_s101) print *, 'error  line  245'
if (tb%tyB_s301   .ne.  tb%m01tyB_s301) print *, 'error  line  246'

if (t2%m03ty2_i401.ne.  tb%m03tyB_i401) print *, 'error  line  248'
if (t2%m03ty2_r401.ne.  tb%m03tyB_r401) print *, 'error  line  249'
if (t2%m03ty2_c401.ne.  tb%m03tyB_c401) print *, 'error  line  250'
if (t2%m03ty2_l401.neqv.tb%m03tyB_l401) print *, 'error  line  251'
if (t2%m03ty2_s101.ne.  tb%m03tyB_s101) print *, 'error  line  252'
if (t2%m03ty2_s301.ne.  tb%m03tyB_s301) print *, 'error  line  253'

t2   = ty2(m1t2)
tb   = tyB(m1tb)

if (t2%ty2_i401   .ne.  t2%m01ty2_i401) print *, 'error  line  258'
if (t2%ty2_r401   .ne.  t2%m01ty2_r401) print *, 'error  line  259'
if (t2%ty2_c401   .ne.  t2%m01ty2_c401) print *, 'error  line  260'
if (t2%ty2_l401   .neqv.t2%m01ty2_l401) print *, 'error  line  261'
if (t2%ty2_s101   .ne.  t2%m01ty2_s101) print *, 'error  line  262'
if (t2%ty2_s301   .ne.  t2%m01ty2_s301) print *, 'error  line  263'

if (tb%tyB_i401   .ne.  tb%m01tyB_i401) print *, 'error  line  235'
if (tb%tyB_r401   .ne.  tb%m01tyB_r401) print *, 'error  line  266'
if (tb%tyB_c401   .ne.  tb%m01tyB_c401) print *, 'error  line  267'
if (tb%tyB_l401   .neqv.tb%m01tyB_l401) print *, 'error  line  268'
if (tb%tyB_s101   .ne.  tb%m01tyB_s101) print *, 'error  line  269'
if (tb%tyB_s301   .ne.  tb%m01tyB_s301) print *, 'error  line  270'

if (t2%m03ty2_i401.ne.  tb%m03tyB_i401) print *, 'error  line  272'
if (t2%m03ty2_r401.ne.  tb%m03tyB_r401) print *, 'error  line  273'
if (t2%m03ty2_c401.ne.  tb%m03tyB_c401) print *, 'error  line  274'
if (t2%m03ty2_l401.neqv.tb%m03tyB_l401) print *, 'error  line  275'
if (t2%m03ty2_s101.ne.  tb%m03tyB_s101) print *, 'error  line  276'
if (t2%m03ty2_s301.ne.  tb%m03tyB_s301) print *, 'error  line  277'

t2   = ty2(m2t2)
tb   = tyB(m2tb)

if (t2%ty2_i401   .ne.  t2%m01ty2_i401) print *, 'error  line  282'
if (t2%ty2_r401   .ne.  t2%m01ty2_r401) print *, 'error  line  283'
if (t2%ty2_c401   .ne.  t2%m01ty2_c401) print *, 'error  line  284'
if (t2%ty2_l401   .neqv.t2%m01ty2_l401) print *, 'error  line  285'
if (t2%ty2_s101   .ne.  t2%m01ty2_s101) print *, 'error  line  286'
if (t2%ty2_s301   .ne.  t2%m01ty2_s301) print *, 'error  line  287'

if (tb%tyB_i401   .ne.  tb%m01tyB_i401) print *, 'error  line  289'
if (tb%tyB_r401   .ne.  tb%m01tyB_r401) print *, 'error  line  290'
if (tb%tyB_c401   .ne.  tb%m01tyB_c401) print *, 'error  line  291'
if (tb%tyB_l401   .neqv.tb%m01tyB_l401) print *, 'error  line  292'
if (tb%tyB_s101   .ne.  tb%m01tyB_s101) print *, 'error  line  293'
if (tb%tyB_s301   .ne.  tb%m01tyB_s301) print *, 'error  line  294'

if (t2%m03ty2_i401.ne.  tb%m03tyB_i401) print *, 'error  line  296'
if (t2%m03ty2_r401.ne.  tb%m03tyB_r401) print *, 'error  line  297'
if (t2%m03ty2_c401.ne.  tb%m03tyB_c401) print *, 'error  line  298'
if (t2%m03ty2_l401.neqv.tb%m03tyB_l401) print *, 'error  line  299'
if (t2%m03ty2_s101.ne.  tb%m03tyB_s101) print *, 'error  line  300'
if (t2%m03ty2_s301.ne.  tb%m03tyB_s301) print *, 'error  line  301'

t2   = ty2(m3t2)
tb   = tyB(m3tb)

if (t2%ty2_i401   .ne.  t2%m01ty2_i401) print *, 'error  line  306'
if (t2%ty2_r401   .ne.  t2%m01ty2_r401) print *, 'error  line  307'
if (t2%ty2_c401   .ne.  t2%m01ty2_c401) print *, 'error  line  308'
if (t2%ty2_l401   .neqv.t2%m01ty2_l401) print *, 'error  line  309'
if (t2%ty2_s101   .ne.  t2%m01ty2_s101) print *, 'error  line  310'
if (t2%ty2_s301   .ne.  t2%m01ty2_s301) print *, 'error  line  311'

if (tb%tyB_i401   .ne.  tb%m01tyB_i401) print *, 'error  line  313'
if (tb%tyB_r401   .ne.  tb%m01tyB_r401) print *, 'error  line  314'
if (tb%tyB_c401   .ne.  tb%m01tyB_c401) print *, 'error  line  315'
if (tb%tyB_l401   .neqv.tb%m01tyB_l401) print *, 'error  line  316'
if (tb%tyB_s101   .ne.  tb%m01tyB_s101) print *, 'error  line  317'
if (tb%tyB_s301   .ne.  tb%m01tyB_s301) print *, 'error  line  318'

if (t2%m03ty2_i401.ne.  tb%m03tyB_i401) print *, 'error  line  320'
if (t2%m03ty2_r401.ne.  tb%m03tyB_r401) print *, 'error  line  321'
if (t2%m03ty2_c401.ne.  tb%m03tyB_c401) print *, 'error  line  322'
if (t2%m03ty2_l401.neqv.tb%m03tyB_l401) print *, 'error  line  323'
if (t2%m03ty2_s101.ne.  tb%m03tyB_s101) print *, 'error  line  324'
if (t2%m03ty2_s301.ne.  tb%m03tyB_s301) print *, 'error  line  325'

t2   = ty2(ty1_s101 = '3', m03ty2 = m3t2)
tb   = tyB(tyA_s101 = '3', m03tyB = m3tb)

if (t2%ty2_i401   .ne.  t2%m01ty2_i401) print *, 'error  line  330'
if (t2%ty2_r401   .ne.  t2%m01ty2_r401) print *, 'error  line  331'
if (t2%ty2_c401   .ne.  t2%m01ty2_c401) print *, 'error  line  332'
if (t2%ty2_l401   .neqv.t2%m01ty2_l401) print *, 'error  line  333'
if (t2%ty2_s101   .ne.  t2%m01ty2_s101) print *, 'error  line  334'
if (t2%ty2_s301   .ne.  t2%m01ty2_s301) print *, 'error  line  335'

if (tb%tyB_i401   .ne.  tb%m01tyB_i401) print *, 'error  line  337'
if (tb%tyB_r401   .ne.  tb%m01tyB_r401) print *, 'error  line  338'
if (tb%tyB_c401   .ne.  tb%m01tyB_c401) print *, 'error  line  339'
if (tb%tyB_l401   .neqv.tb%m01tyB_l401) print *, 'error  line  340'
if (tb%tyB_s101   .ne.  tb%m01tyB_s101) print *, 'error  line  341'
if (tb%tyB_s301   .ne.  tb%m01tyB_s301) print *, 'error  line  342'

if (t2%m03ty2_i401.ne.  tb%m03tyB_i401) print *, 'error  line  344'
if (t2%m03ty2_r401.ne.  tb%m03tyB_r401) print *, 'error  line  345'
if (t2%m03ty2_c401.ne.  tb%m03tyB_c401) print *, 'error  line  346'
if (t2%m03ty2_l401.neqv.tb%m03tyB_l401) print *, 'error  line  347'
if (t2%m03ty2_s101.ne.  tb%m03tyB_s101) print *, 'error  line  348'
if (t2%m03ty2_s301.ne.  tb%m03tyB_s301) print *, 'error  line  349'

t2   = ty2(m03ty2_s101 = '4', ty1_s101 = '4', m02ty2 = m2t2)
tb   = tyB(m03tyB_s101 = '4', tyA_s101 = '4', m02tyB = m2tb)

if (t2%ty2_i401   .ne.  t2%m01ty2_i401) print *, 'error  line  354'
if (t2%ty2_r401   .ne.  t2%m01ty2_r401) print *, 'error  line  355'
if (t2%ty2_c401   .ne.  t2%m01ty2_c401) print *, 'error  line  356'
if (t2%ty2_l401   .neqv.t2%m01ty2_l401) print *, 'error  line  357'
if (t2%ty2_s101   .ne.  t2%m01ty2_s101) print *, 'error  line  358'
if (t2%ty2_s301   .ne.  t2%m01ty2_s301) print *, 'error  line  359'

if (tb%tyB_i401   .ne.  tb%m01tyB_i401) print *, 'error  line  361'
if (tb%tyB_r401   .ne.  tb%m01tyB_r401) print *, 'error  line  361'
if (tb%tyB_c401   .ne.  tb%m01tyB_c401) print *, 'error  line  363'
if (tb%tyB_l401   .neqv.tb%m01tyB_l401) print *, 'error  line  364'
if (tb%tyB_s101   .ne.  tb%m01tyB_s101) print *, 'error  line  365'
if (tb%tyB_s301   .ne.  tb%m01tyB_s301) print *, 'error  line  366'

if (t2%m03ty2_i401.ne.  tb%m03tyB_i401) print *, 'error  line  368'
if (t2%m03ty2_r401.ne.  tb%m03tyB_r401) print *, 'error  line  369'
if (t2%m03ty2_c401.ne.  tb%m03tyB_c401) print *, 'error  line  370'
if (t2%m03ty2_l401.neqv.tb%m03tyB_l401) print *, 'error  line  371'
if (t2%m03ty2_s101.ne.  tb%m03tyB_s101) print *, 'error  line  372'
if (t2%m03ty2_s301.ne.  tb%m03tyB_s301) print *, 'error  line  373'

t2   = ty2(m03ty2_s101 = '5', m02ty2_s101 = '5', ty1_s101 = '5', m01ty2 = m1t2)
tb   = tyB(m03tyB_s101 = '5', m02tyB_s101 = '5', tyA_s101 = '5', m01tyB = m1tb)

if (t2%ty2_i401   .ne.  t2%m01ty2_i401) print *, 'error  line  378'
if (t2%ty2_r401   .ne.  t2%m01ty2_r401) print *, 'error  line  379'
if (t2%ty2_c401   .ne.  t2%m01ty2_c401) print *, 'error  line  380'
if (t2%ty2_l401   .neqv.t2%m01ty2_l401) print *, 'error  line  381'
if (t2%ty2_s101   .ne.  t2%m01ty2_s101) print *, 'error  line  382'
if (t2%ty2_s301   .ne.  t2%m01ty2_s301) print *, 'error  line  383'

if (tb%tyB_i401   .ne.  tb%m01tyB_i401) print *, 'error  line  385'
if (tb%tyB_r401   .ne.  tb%m01tyB_r401) print *, 'error  line  386'
if (tb%tyB_c401   .ne.  tb%m01tyB_c401) print *, 'error  line  387'
if (tb%tyB_l401   .neqv.tb%m01tyB_l401) print *, 'error  line  388'
if (tb%tyB_s101   .ne.  tb%m01tyB_s101) print *, 'error  line  389'
if (tb%tyB_s301   .ne.  tb%m01tyB_s301) print *, 'error  line  390'

if (t2%m03ty2_i401.ne.  tb%m03tyB_i401) print *, 'error  line  392'
if (t2%m03ty2_r401.ne.  tb%m03tyB_r401) print *, 'error  line  393'
if (t2%m03ty2_c401.ne.  tb%m03tyB_c401) print *, 'error  line  394'
if (t2%m03ty2_l401.neqv.tb%m03tyB_l401) print *, 'error  line  395'
if (t2%m03ty2_s101.ne.  tb%m03tyB_s101) print *, 'error  line  396'
if (t2%m03ty2_s301.ne.  tb%m03tyB_s301) print *, 'error  line  397'

t2   = ty2(ty1_s101 = '6')
tb   = tyB(tyA_s101 = '8')

if (t2%ty1_s101.eq.  tb%tyA_s101) print *, 'error  line  402'

print *,'pass'

end
