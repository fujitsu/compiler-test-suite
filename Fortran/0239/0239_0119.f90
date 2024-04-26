subroutine s1
complex(4),parameter::a=0
complex(8),parameter::b=0
complex(16),parameter::c=0
parameter(k1=kind(real(a)))
parameter(k2=kind(real(b)))
parameter(k3=kind(real(c)))
if (kind(real(a))/=4) print *,101
if (kind(real(b))/=8) print *,102
if (kind(real(c))/=16) print *,103
if (k1/=4) print *,201,k1
if (k2/=8) print *,202,k2
if (k3/=16) print *,203,k3
end
call s1
print *,'pass'
end
