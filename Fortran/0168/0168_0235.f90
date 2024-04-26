real(4),parameter::a=0.1
real(8),parameter::b=0.1
real(4)::aa=0.1
real(8)::bb=0.1,bbb=atan2(a,b)
integer,parameter:: k=kind(atan2(a,b))

if (abs(atan2(aa,bb)- 0.7853981633974483_8)>0.001) print *,101
if (abs(bbb- 0.7853981633974483_8)>0.001) print *,102
if (kind(atan2(aa,bb))/=8) print *,201
if (k                 /=8) print *,202
print *,'pass'
end
