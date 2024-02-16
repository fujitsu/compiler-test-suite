complex(8) :: c(2, 3), d(3), e(2)
c = 1.0_8
d = 1.0_8
e = 1.0_8
e = 1.4_8 * matmul(c, d) + 1.4_8 * e  ! call g_matmld
if (any(abs(e-5.6_8)>0.0001))print *,'error-1'
e = 1.4_8 * matmul(c, d) + e  ! call g_mt21blasd
if (any(abs(e-9.8_8)>0.0001))print *,'error-2'
e = matmul(c, d) + 1.4_8 * e  ! call g_mt21blasd
if (any(abs(e-16.72_8)>0.0001))print *,'error-3'
print *, 'pass'
end

