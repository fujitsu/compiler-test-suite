module m0
 interface
 module subroutine s()
 end 
 end interface
end

submodule (m0) ss
contains
 module subroutine s()
 use m0
write(1,*)1
 end 
end
use m0
call s
rewind 1
read(1,*) k
if (k/=1)print *,101
print *,'pass'
end
