subroutine s1
integer(8),parameter::k1=1,k2=2,k3=3
integer(8),parameter::n1(3,4)=reshape([(k,k=1,24)],[3,4])
integer(8),parameter::n2(2,4)=reshape([(k,k=1,24)],[2,4])
integer(8),parameter::n3(2,3)=reshape([(k,k=1,24)],[2,3])
integer,parameter:: a1(2,3,4)=reshape([(k,k=1,24)],[2,3,4])
integer,parameter:: x1(2,3,4)=cshift(a1,shift=k1)
integer,parameter:: x2(2,3,4)=cshift(array=a1,shift=k2)
integer,parameter:: x3(2,3,4)=cshift(shift=k3,array=a1)
integer,parameter:: x4(2,3,4)=cshift(a1,shift=n1)
integer,parameter:: x5(2,3,4)=cshift(a1,shift=n1+1)
integer,parameter:: x6(2,3,4)=cshift(a1,n1,1)
integer,parameter:: x7(2,3,4)=cshift(a1,shift=n2,dim=2)
integer,parameter:: x8(2,3,4)=cshift(a1,n3,dim=3)
integer          :: y1(2,3,4),y2(2,3,4),y3(2,3,4),y4(2,3,4),y5(2,3,4),&
   y6(2,3,4),y7(2,3,4),y8(2,3,4)
y1=cshift(a1,k1)
y2=cshift(a1,k2)
y3=cshift(a1,k3)
y4=cshift(a1,n1)
y5=cshift(a1,n1+1)
y6=cshift(a1,n1,1)
y7=cshift(a1,n2,2)
y8=cshift(a1,n3,3)
if (any(x1/=y1))print *,101
if (any(x2/=y2))print *,102
if (any(x3/=y3))print *,103
if (any(x4/=y4))print *,104
if (any(x5/=y5))print *,105
if (any(x6/=y6))print *,106
if (any(x7/=y7))print *,107
if (any(x8/=y8))print *,108
end
call s1
print *,'pass'
end
