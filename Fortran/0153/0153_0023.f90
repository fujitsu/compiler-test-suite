module m1
 integer::var=1
 namelist /nam/var
 end
module m2
use m1,only:nam
complex ::var=(2,2)
 namelist /nam2/var
end
use m2
if (var/=(2,2)) print *,202
write(1,nam)
write(2,nam2)
call ss
call st
print *,'pass'
end
subroutine ss
 integer::var
 namelist /nam/var
rewind 1
read(1,nam)
if (var/=1) print *,101
end
subroutine st
 complex::var
 namelist /nam2/var
rewind 2
read(2,nam2)
if (var/=(2,2)) print *,102
end
