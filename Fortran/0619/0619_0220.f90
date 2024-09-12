subroutine s1
INTEGER*4,parameter::b=CEILING(6715.23_8,2)
INTEGER*4::a=CEILING(6715.23_8,2)
k=CEILING(6715.23_8,2)
if (k/=a)print *,101
if (k/=b)print *,102
end
call s1
print *,'pass'
end

