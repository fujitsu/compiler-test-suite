integer::a(2)
integer,parameter::i=kind(ubound(a,kind=4))
integer,parameter::k=kind(int(1,kind=4))
integer,parameter::j=kind(int(1))
integer,parameter::n=kind(ubound(a))
if (any([i,k,j,n]/=4))print *,101
print *,'pass'
end
