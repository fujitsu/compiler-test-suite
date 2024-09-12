module mod
enum,bind(c)
  enumerator :: aaa = 100
end enum
enum,bind(c)
  enumerator :: bbb = 200,ccc
end enum
end module
use mod
if (aaa .ne. 100) print *,'ng aaa'
if (bbb .ne. 200) print *,'ng bbb'
if (ccc .ne. 201) print *,'ng ccc'
print *,'ok'
end
