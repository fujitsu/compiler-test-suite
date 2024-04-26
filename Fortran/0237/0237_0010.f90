module foo_module
 type :: foo
 integer :: ii
 end type
end module
 
module m1
 use foo_module
 type,extends(foo) :: ZZ
 integer :: jj
 end type
end module
 
program main
use m1,only : YY=>ZZ
use m1,only : ZZ
type(zz)  :: this_zz
this_zz%ii = 6
print*,"pass"
end program
