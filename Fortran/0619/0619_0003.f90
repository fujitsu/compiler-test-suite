subroutine  s1
real(4),parameter::a14=real(z'40000000')
if (abs(a14-2)>0.0001)print *,102
if (abs(real(z'40000000')-2)>0.0001)print *,103
end
call s1
print *,'pass'
end
