module mod
procedure(logical),pointer::aaa
end

module mod1
use mod
end

module mod2
use mod,only:bbb=>aaa
use mod
end

module moda
use mod2
use mod1
private
end

module xxx
use moda
end

use xxx
print *,'pass'
end
