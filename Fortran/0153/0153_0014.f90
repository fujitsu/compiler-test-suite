module m1
 integer::var1=1
 integer::var2=2
 namelist /nam/var1,var2
 end

use m1,only:nam,var2
write(1,nam)
call ss
print *,'pass'
end
subroutine ss
 integer::var1,var2
 namelist /nam/var1,var2
rewind 1
read(1,nam)
if (var1/=1) print *,101
if (var2/=2) print *,102
end
