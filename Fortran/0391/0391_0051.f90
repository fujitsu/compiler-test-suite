subroutine s1
integer,target::t(6)=[1,2,3,4,5,6]
integer,pointer::pp(:)
pp(1:3)=>t(2::2)
if (any(pp/=[2,4,6])) print *,'error'
k1=1;k2=2;k3=3
pp(k1:k3)=>t(k2::k2)
if (any(pp/=[2,4,6])) print *,'error'
if (lbound(pp,1)/=1) print *,201
if (ubound(pp,1)/=3) print *,202
end
call s1
print *,'pass'
end
