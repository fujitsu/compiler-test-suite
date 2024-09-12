integer,pointer::p(:)
integer,target::a(2)=[1,2]
p(3:4)=> a
if (lbound(p,dim=1)/= 3) print *,101
if (any(p/= a)) print *,102
print *,'pass'
end
