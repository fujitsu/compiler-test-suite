module mod
use iso_c_binding
type(c_ptr) :: str,str2
end

module mod1
use mod
end

module mod2
use mod,only:JJ=>str
use mod
end

module moda
use mod2
use mod1
private
end

module a_iso_c_binding
use iso_c_binding,only:x_ptr => c_ptr
use iso_c_binding
end
module xxx
use moda
use a_iso_c_binding
interface
function ifun()
use iso_c_binding
type(c_ptr) :: ifun
end function
end interface
private 
public::x_ptr
end

use iso_c_binding
use xxx
type(x_ptr) :: astr,astr2
type(c_ptr) :: bstr,bstr2
print *,'pass'
end
