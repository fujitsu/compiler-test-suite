module mod
enum,bind(C)
  enumerator :: aaa = 100
  enumerator :: bbb
end enum
end module

use mod
if ( aaa .ne. 100) print *,'ng aaa'
if ( bbb .ne. 101) print *,'ng bbb'
print *,'ok'
end
