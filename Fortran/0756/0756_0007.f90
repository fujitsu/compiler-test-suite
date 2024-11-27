subroutine s1
parameter(a=-0.0,aa=3)
parameter(k=0)
parameter(n1=modulo(3,k))
parameter(a1=modulo(aa,a))
parameter(n2=mod(3,k))
parameter(a2=mod(aa,a))
print *,n1,a1,n2,a2
end
subroutine s2
implicit real(8)(a)
parameter(a=-0.0,aa=3)
parameter(k=0)
parameter(n1=modulo(3,k))
parameter(a1=modulo(aa,a))
parameter(n2=mod(3,k))
parameter(a2=mod(aa,a))
print *,n1,a1,n2,a2
end
subroutine s3
implicit real(16)(a)
parameter(a=-0.0,aa=3)
parameter(k=0)
parameter(n1=modulo(3,k))
parameter(a1=modulo(aa,a))
parameter(n2=mod(3,k))
parameter(a2=mod(aa,a))
print *,n1,a1,n2,a2
end
print *,'pass'
end
