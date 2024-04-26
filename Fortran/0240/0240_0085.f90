z = dim(1.1, 0.8)
if (abs(z-0.3_4)>0.00001   )print *,'err'
z = dim(0.8, 1.1)

if (abs(z-0.0_4)>0.00001   )print *,'err'

print *,'pass'
end
