module m
integer,dimension(2)::a(0:100)=(/(kk,kk=0,100)/)
contains
subroutine s(p,i)
integer,pointer,dimension(:)::p
i2fun(k)=k+a(2)-k-2+jfun(a(k-1))
ifun(k)=i2fun(jfun(a(k+1)))+i2fun(a(jfun(k)+1))-jfun(i2fun(a(k)+1))
call ss(p,ifun(a(i+1)),ifun((i*2)+2-i))
end subroutine
end
use m
integer,pointer,dimension(:)::p,pp
allocate (p(5))
p=(/1,2,3,4,5/)
call s(p,1)
if (any(p/=0))print *,'error-11'
allocate(pp(10))
pp(2:10:2)=(/6,7,8,9,10/)
p=>pp(2:10:2)
call s(p,2)
if (any(p/=0))print *,'error-12'
print *,'pass'
end
subroutine ss(p,i,j)
integer,dimension(*)::p
if (i/=j-1)print *,'error-x'
select case(i)
case (2); if (any(p(1:5)/=0+(/1,2,3,4,5/)))print *,'error-01'
case (3); if (any(p(1:5)/=5+(/1,2,3,4,5/)))print *,'error-02'
end select
p(1:5)=0
end
function jfun(j)
jfun=j
end
