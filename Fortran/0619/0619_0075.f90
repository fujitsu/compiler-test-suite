subroutine s1
implicit real(a)
dimension a(3),k(3)
parameter(a=2)
parameter(k=2)
parameter(n1=size(modulo(3,k)))
parameter(n2=size(modulo(3.,a)))
parameter(n3=kind(modulo(3._4,a)))
if (n1/=3)print *,101
if (n2/=3)print *,102
if (n3/=4)print *,103
end
subroutine s2
implicit real(16)(a)
dimension a(3),k(3)
parameter(a=2)
parameter(k=2)
parameter(n1=size(modulo(3,k)))
parameter(n2=size(modulo(3.,a)))
parameter(n3=kind(modulo(3._4,a)))
if (n1/=3)print *,201
if (n2/=3)print *,202
if (n3/=16)print *,203
end
call s1
call s2
print *,'pass'
end

