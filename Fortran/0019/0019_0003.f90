module mod1
implicit none
integer(1) :: k
type ty10(ii)
integer(8),kind::ii=20
integer(8) :: array(ii)=(/(k,k=1,ii)/)
end type
type ::ty1(jj)
integer(8),kind::jj=10
type(ty10(jj+10)) :: str
type(ty10(jj+20)) :: str2
end type
TYPE(ty1(10)) :: xxx,xx
end
module mod
use mod1,only:xxx
implicit none
end
use mod
implicit none
if (xxx%str%array(1).ne.1) print *,'err1'
if (xxx%str%array(20).ne.20) print *,'err2'
if (size(xxx%str%array).ne.20) print *,'err3'
if (xxx%str2%array(1).ne.1) print *,'err4'
if (xxx%str2%array(30).ne.30) print *,'err5'
if (size(xxx%str2%array).ne.30) print *,'err6'
if (xxx%str%ii .ne. 20) print *,'err7'
if (xxx%str2%ii .ne. 30) print *,'err8'
print *,'OK'
end

