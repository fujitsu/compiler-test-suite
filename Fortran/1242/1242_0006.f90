function ifunc(i)
ifunc=i
end
function jfunc(i)
jfunc=i
end

use, intrinsic :: ieee_arithmetic
intrinsic :: int
interface
function jfunc(i)
end
end interface
integer :: arr(1)
jfs(ii)=ii
arr=0
  associate( block_thickness_z => (/((i),i=1,ifunc(1))/))
  arr=block_thickness_z
  end associate
if (arr(1) .ne. 1) print *,'ERR'
arr=0
  associate( block_thickness_z => (/((i),i=1,jfunc(1))/))
  arr=block_thickness_z
  end associate
if (arr(1) .ne. 1) print *,'ERR'
arr=0
  associate( block_thickness_z => (/((i),i=1,jfs(1))/))
  arr=block_thickness_z
  end associate
if (arr(1) .ne. 1) print *,'ERR'
arr=0
  associate( block_thickness_z => (/((i),i=1,jf(1))/))
  arr=block_thickness_z
  end associate
if (arr(1) .ne. 1) print *,'ERR'
arr=0
  associate( block_thickness_z => (/((1),i=1,ieee_selected_real_kind(6,30))/))
  arr=1
  end associate
if (arr(1) .ne. 1) print *,'ERR'
!arr=0
!  associate( block_thickness_z => (/((i),i=1,int(1))/))
!  arr=block_thickness_z
!  end associate
!if (arr(1) .ne. 1) print *,'ERR'
print *,'pass'
contains
function jf(i)
jf=i
end
end

