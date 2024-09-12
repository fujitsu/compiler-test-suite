module mod
procedure(logical),pointer::aaa
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
end

use xxx
procedure(logical),pointer::ifun
aaa=>ifun
print *,'pass'
end
