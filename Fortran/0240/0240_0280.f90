call s
print *,'pass'
end
subroutine s
a = set_exponent (4.6, 2)
if(abs(a-2.29999995) >=0.10000000) print *,'err'
end
