subroutine s1
integer:: k(2),kk(2),kkk(2),kkkk(2)
k=0
forall (n=1:ifun(k))
kk(n)=k(n)
kkk(n)=k(n)
kkkk(n)=k(n)
end forall
if (any(kk/=[3,4])) print *,101,KK
if (any(kkk/=[3,4])) print *,102,KKK
if (any(kkkk/=[3,4])) print *,103,KKKK
contains
function ifun( k ) result(ir)
integer:: k(2)
k=K+[3,4]
ir=2
end function
end
call s1
print *,'OK'
end
