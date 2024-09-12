module mod
enum,bind(C)
  enumerator :: aaa
  enumerator :: bbb
end enum
end module

use mod
if ( aaa .ne. 0) print *,'ng aaa'
if ( bbb .ne. 1) print *,'ng bbb'
print *,'ok'
end
