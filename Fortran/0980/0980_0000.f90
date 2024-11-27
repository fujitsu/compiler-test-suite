module mod
 integer,protected :: aa
 common /aa/aaa
end module

module mod1
 integer,protected :: bb
end module

use mod1
 common /bb/bbb
end
