subroutine s1
integer:: k(2,3),kk(2,3),kkk(2,3),kkkk(2,3)
integer,parameter::p(2,3)=reshape([1,2,3,4,5,6],[2,3])
k=0
forall (n=1:ifun(k))
kk(n,:)=k(n,:)
kkk(n,:)=k(n,:)
kkkk(n,:)=k(n,:)
end forall
if (any(kk/=p)) print *,101,KK
if (any(kkk/=p)) print *,102,KKK
if (any(kkkk/=p)) print *,103,KKKK
contains
function ifun( k ) result(ir)
integer:: k(2,3)
k=K+p
ir=2
end function
end
call s1
print *,'OK'
end
