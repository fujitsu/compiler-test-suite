module m0
  integer::k
 interface
 module subroutine s()
 end 
 end interface
contains
 module subroutine s()
   k=k+1
 end 
end
use m0
k=0
call s
if (k/=1) print *,101
print *,'OK'
end
