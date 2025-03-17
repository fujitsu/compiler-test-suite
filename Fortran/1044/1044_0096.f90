call s
end
subroutine s
integer,pointer::p(:,:)
integer,target::t(2,3)
t=0
t(:,1:3:2)=1
p=>t(:,1:3:2)
call sub(p(:,:))
print *,'pass'
end
subroutine sub(a)
integer a(4)
if (any(a/=1))write(6,*) "NG"
end
