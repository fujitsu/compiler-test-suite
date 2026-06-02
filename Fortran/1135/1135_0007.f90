!
integer,parameter::a(*)=[1,2]
integer(8),parameter:: b=rank(a)
if (b/=1) print *,b
print *,'pass'
end
