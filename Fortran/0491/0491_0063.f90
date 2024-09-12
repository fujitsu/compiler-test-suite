module mod1
type t1
 procedure(ifun1),nopass,pointer:: p1
end type
contains
integer function ifun1()
ifun1=100
end 
end

module mod2
use mod1
type t2
 type(t1) :: cmp2 = t1(ifun1)
end type
type(t2) :: str
end

use mod1
use mod2
print *,'pass'
end
