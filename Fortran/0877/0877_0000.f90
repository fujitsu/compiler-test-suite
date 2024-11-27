subroutine s1
parameter(a=0)
parameter(k=0)
parameter(n1=modulo(3,k))
parameter(a1=modulo(3.,a))
parameter(n2=mod(3,k))
parameter(a2=mod(3.,a))
print *,n1,a1
print *,     modulo(3.,a)
end
subroutine s2
implicit real(8)(a)
parameter(a=0)
parameter(k=0)
parameter(n1=modulo(3,k))
parameter(a1=modulo(3.,a))
parameter(n2=mod(3,k))
parameter(a2=mod(3.,a))
print *,n1,a1
print *,     modulo(3.,a)
end
subroutine s3
implicit real(16)(a)
parameter(a=0)
parameter(k=0)
parameter(n1=modulo(3,k))
parameter(a1=modulo(3.,a))
parameter(n2=mod(3,k))
parameter(a2=mod(3.,a))
print *,n1,a1
print *,     modulo(3.,a)
end
print *,'pass'
end
