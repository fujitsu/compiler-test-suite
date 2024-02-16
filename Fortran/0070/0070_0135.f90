subroutine s1(k1,k2,k4,k8)
integer(1),parameter::p1=1
integer(2),parameter::p2=1
integer(4),parameter::p4=1
integer(8),parameter::p8=1
integer(1)::k1
integer(2)::k2
integer(4)::k4
integer(8)::k8
n=0
if (k1==p1)n=n+1
if (k1==p2)n=n+1
if (k1==p4)n=n+1
if (k1==p8)n=n+1
if (k2==p1)n=n+1
if (k2==p2)n=n+1
if (k2==p4)n=n+1
if (k2==p8)n=n+1
if (k4==p1)n=n+1
if (k4==p2)n=n+1
if (k4==p4)n=n+1
if (k4==p8)n=n+1
if (k8==p1)n=n+1
if (k8==p2)n=n+1
if (k8==p4)n=n+1
if (k8==p8)n=n+1
if (n/=16)print *,n
end
call s1(1_1,1_2,1_4,1_8)
print *,'pass'
end

