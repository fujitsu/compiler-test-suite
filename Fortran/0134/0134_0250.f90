module m1
asynchronous::kk
contains
subroutine s(k)
asynchronous::k
end subroutine
function   kf()
asynchronous::kf
kf= 2
end function
function kkp() 
 pointer::kkp
 pointer::n
 n=>null()
 kkp=>n
end function
function kmp() 
 integer,pointer::kmp
 kmp=>null()
end function
end
use m1
kk=1
call s(kk)
if (kk/=1)print *,101,kk
if (kf()/=2)print *,102
if (associated(kkp()))print *,103
if (associated(kmp()))print *,104
print *,'pass'
end
