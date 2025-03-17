real(8) :: c(2, 3), d(3), e(2)
c = 1.0_8
d = 1.0_8
e = 1.0_8
e = 1.4_8 * e +1.4_8 * matmul(c, d)
if (any(abs(e-5.6_8)>0.0001))print *,'error-1'
print *, 'pass'
end
