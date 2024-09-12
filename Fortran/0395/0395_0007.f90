program main
complex*16, parameter::a(8) = (/(1.0_8, 21.0_8), (2.0_8, 22.0_8), (3.0_8, 23.0_8), (4.0_8, 24.0_8) , &
                                (5.0_8, 25.0_8), (6.0_8, 26.0_8), (7.0_8, 27.0_8), (8.0_8, 28.0_8) /)
complex*16, parameter::b(2, 4) = reshape(a, (/2,4/))
integer*4, parameter::c(12) = (/41_4, 42_4, 43_4, 44_4, &
                                45_4, 46_4, 47_4, 48_4, &
    49_4, 50_4, 51_4, 52_4/)
integer*4, parameter::d(4, 3) = reshape(c, (/4,3/))

complex*16::f(2,3)
f = matmul(b ,d)

print *,'pass'
end
