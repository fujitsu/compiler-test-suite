call test01()
call test02()
call test03()
print *,'pass'
end
subroutine test01()
real(kind=4) :: r01=-0.0e+0
real(kind=8) :: r02=-0.0d+0
real(kind=16) :: r03=-0.0q+0
real(kind=4) :: r11=-0.0_4
real(kind=8) :: r12=-0.0_8
real(kind=16) :: r13=-0.0_16
real(kind=4) :: r21=-(-0.0_4)
real(kind=8) :: r22=-(-0.0_8)
real(kind=16) :: r23=-(-0.0_16)
real(kind=4) :: r31=-(-(-0.0_4))
real(kind=8) :: r32=-(-(-0.0_8))
real(kind=16) :: r33=-(-(-0.0_16))
real(kind=4) :: r41=-(+(-0.0_4))
real(kind=8) :: r42=-(+(-0.0_8))
real(kind=16) :: r43=-(+(-0.0_16))
real(kind=4) :: r51=-(+(+0.0_4))
real(kind=8) :: r52=-(+(+0.0_8))
real(kind=16) :: r53=-(+(+0.0_16))
real(kind=4) :: r61=+(+(-0.0_4))
real(kind=8) :: r62=+(+(-0.0_8))
real(kind=16) :: r63=+(+(-0.0_16))
end

subroutine test02()
real(kind=4),parameter :: r01=-0.0e+0
real(kind=8) ,parameter:: r02=-0.0d+0
real(kind=16),parameter :: r03=-0.0q+0
real(kind=4),parameter :: r11=-0.0_4
real(kind=8),parameter :: r12=-0.0_8
real(kind=16),parameter :: r13=-0.0_16
real(kind=4),parameter :: r21=-(-0.0_4)
real(kind=8),parameter :: r22=-(-0.0_8)
real(kind=16),parameter :: r23=-(-0.0_16)
real(kind=4),parameter :: r31=-(-(-0.0_4))
real(kind=8),parameter :: r32=-(-(-0.0_8))
real(kind=16),parameter :: r33=-(-(-0.0_16))
real(kind=4),parameter :: r41=-(+(-0.0_4))
real(kind=8),parameter :: r42=-(+(-0.0_8))
real(kind=16),parameter :: r43=-(+(-0.0_16))
real(kind=4),parameter :: r51=-(+(+0.0_4))
real(kind=8),parameter :: r52=-(+(+0.0_8))
real(kind=16),parameter :: r53=-(+(+0.0_16))
real(kind=4),parameter :: r61=+(+(-0.0_4))
real(kind=8),parameter :: r62=+(+(-0.0_8))
real(kind=16),parameter :: r63=+(+(-0.0_16))
end

subroutine test03()
real(kind=4) :: r01
real(kind=8) :: r02
real(kind=16) :: r03
real(kind=4) :: r11
real(kind=8) :: r12
real(kind=16) :: r13
real(kind=4) :: r21
real(kind=8) :: r22
real(kind=16) :: r23
real(kind=4) :: r31
real(kind=8) :: r32
real(kind=16) :: r33
real(kind=4) :: r41
real(kind=8) :: r42
real(kind=16) :: r43
real(kind=4) :: r51
real(kind=8) :: r52
real(kind=16) :: r53
real(kind=4) :: r61
real(kind=8) :: r62
real(kind=16) :: r63
 r01=-0.0e+0
 r02=-0.0d+0
 r03=-0.0q+0
r11=-0.0_4
r12=-0.0_8
 r13=-0.0_16
r21=-(-0.0_4)
r22=-(-0.0_8)
 r23=-(-0.0_16)
r31=-(-(-0.0_4))
r32=-(-(-0.0_8))
 r33=-(-(-0.0_16))
r41=-(+(-0.0_4))
r42=-(+(-0.0_8))
 r43=-(+(-0.0_16))
r51=-(+(+0.0_4))
r52=-(+(+0.0_8))
 r53=-(+(+0.0_16))
r61=+(+(-0.0_4))
r62=+(+(-0.0_8))
 r63=+(+(-0.0_16))
end
