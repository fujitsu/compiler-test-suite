module m1
 integer:: k
contains 
subroutine ms1
k=k+1
end subroutine 
end
module m2
 integer,save:: kk
contains 
subroutine ms2
kk=kk+1
end subroutine 
end
subroutine s1
use m1
use m2
k=0
call ms1
if (k/=1) print *,101
kk=0
call ms2
if (kk/=1) print *,102
end
call s1
print *,'pass'
end
