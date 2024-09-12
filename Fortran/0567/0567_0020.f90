module mod1
integer(8) :: k
type ty10(ii)
integer(8),kind::ii=20
integer(8) :: array(ii)=(/(k,k=1,ii)/)
end type
type,extends(ty10)::ty1(jj)
integer(8),kind::jj=10
type(ty10(jj+10)) :: str
type(ty10(jj+20)) :: str2
end type
TYPE(ty1(10)) :: xxx,xx
end
module mod
use mod1,only:xx
end
use mod
if (xx%str%array(1).ne.1) print *,'err1'
if (xx%str%array(20).ne.20) print *,'err2'
if (size(xx%str%array).ne.20) print *,'err3'
if (xx%str2%array(1).ne.1) print *,'err4'
if (xx%str2%array(30).ne.30) print *,'err5'
if (size(xx%str2%array).ne.30) print *,'err6'
if (xx%str%ii .ne. 20) print *,'err7'
if (xx%str2%ii .ne. 30) print *,'err8'
print *,'pass'
end

