character(len = 78) mystring
real ::num = 80.0
write (mystring, '(f0.2)') num
if (index(mystring,'80.00')==0)print *,'error'
print *,'pass'
end
