module m1
procedure(sss) ,pointer :: ii
procedure(rrr) ,pointer :: jj
integer::n=0
contains
function   sss() result(iaa)
ii=>sss
iaa=1
end function   
subroutine rrr()
jj=>rrr
n=n+1
end subroutine
end
subroutine s
use m1
if (sss()/=1) print *,101
if (ii()/=1) print *,102
call rrr
if (n/=1) print *,104
call jj
if (n/=2) print *,103
call rrr()
if (n/=3) print *,105
call jj()
if (n/=4) print *,106
call rrr
if (n/=5) print *,108
call jj
if (n/=6) print *,107
end
call s
print *,'pass'
end

