module mod1
  integer,protected :: aaa
end module
module mod2
  use mod1,bbb=>aaa
end module

use mod2
print *,'pass'
end
