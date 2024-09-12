integer,parameter::k=2
integer(1),parameter:: n1(k,2)=0
integer(1),parameter:: n2(k*2)= pack(n1, .true. , [n1])
if (n2(1)/=0) print *,101
print *,'pass'
end
