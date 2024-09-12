subroutine s1
real(4),parameter::a01=sqrt(0.1)
real(8),parameter::a02=sqrt(0.1_8)
complex(4),parameter::a03=sqrt((0.1,0.1))
complex(8),parameter::a04=sqrt((0.1_8,0.1_8))
real::b=0.1
real(8)::c=0.1_8
complex(4)::d=(0.1,0.1)
complex(8)::e=(0.1_8,0.1_8)
if (a01/=sqrt(b))print *,101
if (a02/=sqrt(c))print *,102
if (a03/=sqrt(d))print *,103
if (a04/=sqrt(e))print *,104
end
call s1
print *,'pass'
end
