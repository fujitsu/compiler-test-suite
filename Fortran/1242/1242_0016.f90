module mod
contains
function ifunc(i) result(iaa)
integer :: iaa(int(i))
iaa=i
end
end

function jfunc(i)
integer :: i
jfunc=int(i)
end

use, intrinsic :: ieee_arithmetic
use mod
intrinsic :: int
interface
function jfunc(i)
end
end interface
integer :: arr(1)
jfs(ii)=int(ii)
  associate( block_thickness_z => (/((i),i=1,0+kind(1))/))
  end associate
  associate( block_thickness_z => (/((i),i=1,jfunc(0+selected_real_kind(4,4)))/))
  end associate
  associate( block_thickness_z => (/((i),i=1,jfunc(0+selected_int_kind(4)))/))
  end associate
  associate( block_thickness_z => (/((i),i=1,jfunc(0+selected_char_kind('a')))/))
  end associate
!  associate( block_thickness_z => (/((i),i=1,0+size_of(arr))/))
!  end associate
arr=0
  associate( block_thickness_z => (/((i),i=1,0+ieee_selected_real_kind(6,30))/))
  arr=1
  end associate
if (arr(1) .ne. 1) print *,'ERR'
print *,'pass'
contains
function jf(i)
jf=i
end
end

