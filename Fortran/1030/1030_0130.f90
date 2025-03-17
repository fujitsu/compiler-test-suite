real(8) :: c(2, 3), d(3), e(2)
c = 1.0_8
d = 1.0_8
e = 1.0_8
e = 1.4_8 * matmul(c, d) + 1.4_8 * e + matmul(c, d)
if (any(abs(e-8.6_8)>0.0001))print *,'error-1'
e = 1.4_8 * matmul(c, d) + e +matmul(c, d)
if (any(abs(e-15.8_8)>0.0001))print *,'error-2'
e = matmul(c, d) + 1.4_8 * e *2.0_8 
if (any(abs(e-47.24_8)>0.0001))print *,'error-3'
e = 1.4_8 * matmul(c, d) - 1.4_8 * e - matmul(c, d)
if (any(abs(e-(-64.936_8))>0.0001))print *,'error-11'
e = 1.4_8 * matmul(c, d) - e -matmul(c, d)
if (any(abs(e-66.136_8)>0.0001))print *,'error-12'
e = matmul(c, d) + 1.4_8 - e -2.0_8 
if (any(abs(e-(-63.736_8))>0.0001))print *,'error-13'
print *, 'pass'
end
