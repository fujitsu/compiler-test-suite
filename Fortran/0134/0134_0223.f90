subroutine s1
complex(4),parameter::b1=(-0.0_4,-0.0_4)
complex(8),parameter::b2=(-0.0_8,-0.0_8)
complex(16),parameter::b3=(-0.0_16,-0.0_16)
write(76, '(z8.8,1x,z8.8)')b1
write(76, '(z16.16,1x,z16.16)')b2
write(76, '(z32.32,1x,z32.32)')b3
end
subroutine s2
complex(4),parameter::b1=-(0.0_4,0.0_4)
complex(8),parameter::b2=-(0.0_8,0.0_8)
complex(16),parameter::b3=-(0.0_16,0.0_16)
write(76, '(z8.8,1x,z8.8)')b1
write(76, '(z16.16,1x,z16.16)')b2
write(76, '(z32.32,1x,z32.32)')b3
end
call s1
call s2
print *,'pass'
end
