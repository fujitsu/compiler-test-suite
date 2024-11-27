call test01()
call test02()
call test03()
print *,"pass"
end
subroutine test03()
use mod,only:r01
use mod,ra01=>r01
save
complex(kind=16) :: c01=(1        , ii01)
complex(kind=16) :: c02=(1_4      , ii01)
complex(kind=16) :: c03=(1_1      , ii01)
complex(kind=16) :: c04=(1_2      , ii01)
complex(kind=16) :: c05=(1_8      , ii01)
complex(kind=16) :: c06=(1.       , ii01)
complex(kind=16) :: c07=(1.0      , ii01)
complex(kind=16) :: c08=(1.0_4    , ii01)
complex(kind=16) :: c09=(1.0_8    , ii01)
complex(kind=16) :: c10=(1.0_16   , ii01)
complex(kind=16) :: c11=(1.d2     , ii01)
complex(kind=16) :: c12=(1.e2     , ii01)
complex(kind=16) :: c13=(1.q2     , ii01)
complex(kind=16) :: c14=(1.d02    , ii01)
complex(kind=16) :: c15=(1.e02    , ii01)
complex(kind=16) :: c16=(1.q02    , ii01)
complex(kind=16) :: c17=(1.q02    , ii01)
complex(kind=16) :: c18=(1.e+02    , ii01)
complex(kind=16) :: c19=(1.d+02    , ii01)
complex(kind=16) :: c20=(1.q+02    , ii01)
print *,c01
print *,c02
print *,c03
print *,c04
print *,c05
print *,c06
print *,c07
print *,c08
print *,c09
print *,c10
print *,c11
print *,c12
print *,c13
print *,c14
print *,c15
print *,c16
print *,c17
print *,c18
print *,c19
print *,c20

end

subroutine test02()
use mod,only:r01
use mod,ra01=>r01
save
complex(kind=8) :: c01=(1        , ii01)
complex(kind=8) :: c02=(1_4      , ii01)
complex(kind=8) :: c03=(1_1      , ii01)
complex(kind=8) :: c04=(1_2      , ii01)
complex(kind=8) :: c05=(1_8      , ii01)
complex(kind=8) :: c06=(1.       , ii01)
complex(kind=8) :: c07=(1.0      , ii01)
complex(kind=8) :: c08=(1.0_4    , ii01)
complex(kind=8) :: c09=(1.0_8    , ii01)
complex(kind=8) :: c10=(1.0_16   , ii01)
complex(kind=8) :: c11=(1.d2     , ii01)
complex(kind=8) :: c12=(1.e2     , ii01)
complex(kind=8) :: c13=(1.q2     , ii01)
complex(kind=8) :: c14=(1.d02    , ii01)
complex(kind=8) :: c15=(1.e02    , ii01)
complex(kind=8) :: c16=(1.q02    , ii01)
complex(kind=8) :: c17=(1.q02    , ii01)
complex(kind=8) :: c18=(1.e+02    , ii01)
complex(kind=8) :: c19=(1.d+02    , ii01)
complex(kind=8) :: c20=(1.q+02    , ii01)
print *,c01
print *,c02
print *,c03
print *,c04
print *,c05
print *,c06
print *,c07
print *,c08
print *,c09
print *,c10
print *,c11
print *,c12
print *,c13
print *,c14
print *,c15
print *,c16
print *,c17
print *,c18
print *,c19
print *,c20

end
subroutine test01()
use mod,only:r01 
use mod,ra01=>r01
complex(kind=4) :: c01=(1        , ii01)
complex(kind=4) :: c02=(1_4      , ii01)
complex(kind=4) :: c03=(1_1      , ii01)
complex(kind=4) :: c04=(1_2      , ii01)
complex(kind=4) :: c05=(1_8      , ii01)
complex(kind=4) :: c06=(1.       , ii01)
complex(kind=4) :: c07=(1.0      , ii01)
complex(kind=4) :: c08=(1.0_4    , ii01)
complex(kind=4) :: c09=(1.0_8    , ii01)
complex(kind=4) :: c10=(1.0_16   , ii01)
complex(kind=4) :: c11=(1.d2     , ii01)
complex(kind=4) :: c12=(1.e2     , ii01)
complex(kind=4) :: c13=(1.q2     , ii01)
complex(kind=4) :: c14=(1.d02    , ii01)
complex(kind=4) :: c15=(1.e02    , ii01)
complex(kind=4) :: c16=(1.q02    , ii01)
complex(kind=4) :: c17=(1.q02    , ii01)
complex(kind=4) :: c18=(1.e+02    , ii01)
complex(kind=4) :: c19=(1.d+02    , ii01)
complex(kind=4) :: c20=(1.q+02    , ii01)
print *,c01
print *,c02
print *,c03
print *,c04
print *,c05
print *,c06
print *,c07
print *,c08
print *,c09
print *,c10
print *,c11
print *,c12
print *,c13
print *,c14
print *,c15
print *,c16
print *,c17
print *,c18
print *,c19
print *,c20

end
module mod
integer         ,parameter :: ii01=1.0_4
real(kind=4)    ,parameter :: r01=1.0_4
end
