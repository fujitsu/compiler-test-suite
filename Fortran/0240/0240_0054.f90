complex :: y,z
y = cmplx (3.2, 4.7)
z = cmplx (3.2)
if (abs(y-(3.2,4.7))>(0.0001)) print *,'err'
if (abs(z-(3.2,0.0))>(0.0001)) print *,'err'
print *,'pass'
end
