module m1
 integer::var
 namelist /nam/var
 end

use m1,only:nam
call x
write(1,nam)
call ss
print *,'pass'
end
subroutine ss
 integer::var
 namelist /nam/var
rewind 1
read(1,nam)
if (var/=1) print *,101
end
subroutine x
use m1
var=1
end
