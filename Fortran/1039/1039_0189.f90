module m1
integer,target,dimension(4),save::t
contains
subroutine s(p,a,b)
integer,pointer,dimension(:)::p2
integer,dimension(:)::p
character(*) ::a,b,c*4
allocate(p2(2))
p2=(/3,4/)
call g(p,p2)
call g2(p2,p)
call g3(p,p2,p,p2,p,p2)
c='abcd'
call ss(p,(a//b))
call ss(p,a//b)
call ss(p,(c))
call ss(p,c)
call ss(p,'abcd')
end subroutine
subroutine g(p,p2)
integer,dimension(2)::p,p2
if (any(p/=(/1,2/)))write(6,*) "NG"
if (any(p2/=(/3,4/)))write(6,*) "NG"
end subroutine
subroutine g2(p2,p)
integer,dimension(2)::p,p2
if (any(p/=(/1,2/)))write(6,*) "NG"
if (any(p2/=(/3,4/)))write(6,*) "NG"
end subroutine
subroutine g3(p,p2,pb,p2b,pc,p2c)
integer,dimension(2)::p,p2,p2b,pb,p2c,pc
if (any(p/=(/1,2/)))write(6,*) "NG"
if (any(p2/=(/3,4/)))write(6,*) "NG"
if (any(pb/=(/1,2/)))write(6,*) "NG"
if (any(p2b/=(/3,4/)))write(6,*) "NG"
if (any(pc/=(/1,2/)))write(6,*) "NG"
if (any(p2c/=(/3,4/)))write(6,*) "NG"
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
