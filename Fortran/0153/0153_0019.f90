module m1
 integer::var=1
 namelist /nam/var
 end
module m2
use m1,only:nam
 integer::var=2
end
use m2
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
