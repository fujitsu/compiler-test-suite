integer,save,target::t(3,1)=reshape([1,2,3],[3,1])
integer,pointer::p2=>t(3,1)
integer,pointer::p3(:)=>t(2:3,1)

if (p2/=3) print *,102,p2
if (any(p3/=[2,3])) print *,103,p3
print *,'pass'
end
