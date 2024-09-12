module mod
contains
subroutine sub
end subroutine
end module

module mod1
use mod,only:sub1=>sub
use mod,only:sub
procedure(sub),pointer:: a
procedure(sub1),pointer:: b
end module

use mod,only:sub
use mod1,only:b=>a
use mod1,only:a
procedure(sub),pointer:: c
a=>sub
b=>a
call a()
call b()
print *,'pass'
end
