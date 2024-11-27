call test01()
print *,"pass"
end
subroutine test01()
use mod
complex(kind=4) :: c01=(i01,r01)
complex(kind=4) :: c02=(i02,r02)
complex(kind=4) :: c03=(i03,r03)
complex(kind=4) :: c04=(i04,r02)
complex(kind=4) :: c05=(r01,r02)
complex(kind=4) :: c06=(r02,r03)
complex(kind=4) :: c07=(r03,r03)
print *,c01
print *,c02
print *,c03
print *,c04
print *,c05
print *,c06
print *,c07
end
module mod
integer(kind=1) ,parameter :: i01=z"7f"
integer(kind=2) ,parameter :: i02=z"7fff"
integer(kind=4) ,parameter :: i03=z"7fffffff"
integer(kind=8) ,parameter :: i04=z"7fffffffffffffff"
real(kind=4)    ,parameter :: r01=1.0_4
real(kind=8)    ,parameter :: r02=2.0_8
real(kind=16)   ,parameter :: r03=4.0_16
complex(kind=4 ),parameter :: pc1=4.0_16
complex(kind=8 ),parameter :: pc2=4.0_16
complex(kind=16),parameter :: pc3=4.0_16
logical(kind=1)  ,parameter :: l01=.true.
character       ,parameter :: ch ="a"
end
