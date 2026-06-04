module mod
contains
function ifunc(i)
ifunc=i
end
end

function jfunc(i)
jfunc=i
end

use, intrinsic :: ieee_arithmetic
use mod
intrinsic :: int
interface
function jfunc(i)
end
end interface
integer :: arr(1)
jfs(ii)=ii
arr=0
  associate( block_thickness_z => (/((i),i=1,0+ifunc(1))/))
  arr=block_thickness_z
  end associate
if (arr(1) .ne. 1) print *,'ERR'
arr=0
  associate( block_thickness_z => (/((i),i=1,0+jfunc(1))/))
  arr=block_thickness_z
  end associate
if (arr(1) .ne. 1) print *,'ERR'
arr=0
  associate( block_thickness_z => (/((i),i=1,0+jfs(1))/))
  arr=block_thickness_z
  end associate
if (arr(1) .ne. 1) print *,'ERR'
arr=0
  associate( block_thickness_z => (/((i),i=1,0+jf(1))/))
  arr=block_thickness_z
  end associate
if (arr(1) .ne. 1) print *,'ERR'
arr=0
  associate( block_thickness_z => (/((i),i=1,0+ieee_selected_real_kind(6,30))/))
  arr=1
  end associate
if (arr(1) .ne. 1) print *,'ERR'
arr=0
  associate( block_thickness_z => (/((i),i=1,0+int(1))/))
  arr=block_thickness_z
  end associate
if (arr(1) .ne. 1) print *,'ERR'
print *,'pass'
contains
function jf(i)
jf=i
end
end

