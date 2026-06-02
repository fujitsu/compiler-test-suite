module ma
  integer:: a1=11,a2=12
end
module maa
use ma
  integer:: a3=13,a4=14
end
module maaa
use maa,only:a3,a4
end
module maaaa
use maaa
private
public:: s1a
contains 
subroutine s1a
if (a3/=13) print *,101
if (a4/=14) print *,101
end subroutine
end
module m1
use maaaa
contains
subroutine s1
call s1a
end subroutine
end
use m1
call s1
print *,'pass'
end
