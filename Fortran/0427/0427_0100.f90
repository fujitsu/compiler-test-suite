module mod
procedure(int),pointer::aaa
procedure(logical)::xxxa
contains
function inta()
entry int()
inta=1
end function
end

function xxxa()
end
module mod1
use mod
end

module mod2
use mod,only:bbb=>aaa
end

module moda
use mod2
use mod1
private
end

module xxx
use moda
use mod2,only:aaa=>bbb
use mod,only:jint=>int
private jint
end

use xxx
use mod,only:jint=>int
use mod,only:int
procedure(jint),pointer::ifun
aaa=>ifun
print *,'pass'
end
