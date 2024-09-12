module mod
type,private:: str
 integer:: i
end type
type,extends(str):: str1
 integer:: j
end type
end module

use mod,only:sss=>str1
use mod,only:str1
type(str1):: a
a%i=1
print *,'pass'
end
