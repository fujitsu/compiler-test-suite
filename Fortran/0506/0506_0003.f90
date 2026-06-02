module mod02
   type :: str
   end type
 interface
 function xfunc() result(rst)
   import
   type (str) :: rst
 end function
 end interface
 procedure(xfunc)   :: func01
end module

use mod02
write(2,*)1
write(2,*)func01()
write(2,*)2
rewind 2
read(2,*)n;if(n/=1) print *,1010
read(2,*)n;if(n/=2) print *,1012
print *,'pass'
end
 function func01() result(rst)
   use mod02
   type (str) :: rst
   rst=str()
 end function
