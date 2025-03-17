module m1
integer,target,dimension(4),save::t
contains
subroutine s(p,a,b)
integer,pointer,dimension(:)::p
character(*) ::a,b,c*4
c='abcd'
call ss(p,(a//b))
call ss(p,a//b)
call ss(p,(c))
call ss(p,c)
call ss(p,'abcd')
end subroutine
subroutine ss(p,c)
integer,dimension(2)::p
character(*) ::c
if (c/='abcd')write(6,*) "NG"
if (any(p/=(/1,2/)))write(6,*) "NG"
end subroutine
subroutine sss(p,i)
integer,pointer,dimension(:)::p
if (i==1)then
allocate(p(2))
else
p=>t(2:4:2)
endif
p=(/1,2/)
end subroutine
end
use m1
integer,pointer,dimension(:)::p
call sss(p,1)
call s(p,'ab','cd')
call s(p,'ab','cd')
call sss(p,2)
call s(p,'ab','cd')
call s(p,'ab','cd')
print *,'pass'
end
