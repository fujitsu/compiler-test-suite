module m1
 type,private :: foo
 integer :: ii
 end type
 type,extends(foo) :: ZZ
 integer :: jj
 end type
end module
 
program main
use m1,only : YY=>ZZ
use m1,only : ZZ
type(zz)  :: this_zz
this_zz%ii = 6
if (this_zz%ii/=6)print *,101
print *,"pass"
end program
