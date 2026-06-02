module mod
contains
function ifunc(i) 
character :: i
end
end

function jfunc(i)
integer*8 :: i
jfunc=int(i)
end

use, intrinsic :: ieee_arithmetic
use,intrinsic :: iso_fortran_env,only:compiler_version
use mod
intrinsic :: int
interface
function jfunc(i)
integer*8 :: i
end
end interface
type ty1
integer :: i
end type
integer :: arr(1)
jfs(ii)=int(ii)
  associate( block_thickness_z => (/((i),i=1,jf(ty1(int(1))))/))
  end associate

arr=0
  associate( block_thickness_z => (/((i),i=1,0+ieee_selected_real_kind(6,30))/))
  arr=1
  end associate
if (arr(1) .ne. 1) print *,'ERR'
print *,'pass'
contains
function jf(i)
type (ty1) :: i
jf=i%i
end
end

