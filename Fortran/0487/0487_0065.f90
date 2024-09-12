integer,save,target::t(3)=[1,2,3]
integer,pointer::p1,p2=>t(3)
data p1/t(3)/
integer,pointer::p3(:)
data p3/t/

if (p1/=3) print *,101,p1
if (p2/=3) print *,102,p2
if (any(p3/=[1,2,3])) print *,103,p3
print *,'pass'
end
