module mod
 interface
   subroutine sub()
   end
 end interface
contains
subroutine s(i)
procedure(sub),optional,pointer::i
end subroutine
end module

module mod1
 interface
   subroutine sub()
   end
 end interface
contains
subroutine s(i)
pointer::i
procedure(sub),optional::i
end subroutine
end module

module mod2
 interface
   subroutine sub()
   end
 end interface
contains
subroutine s(i)
procedure(sub),optional::i
pointer::i
end subroutine
end module

module mod3
 interface
   subroutine sub()
   end
 end interface
contains
subroutine s(i)
procedure(sub),optional,pointer::i
end subroutine
end module

module mod4
 interface
   subroutine sub()
   end
 end interface
contains
subroutine s(i)
pointer::i
procedure(sub),optional::i
end subroutine
end module

module mod5
 interface
   subroutine sub()
   end
 end interface
contains
subroutine s(i)
procedure(sub),optional::i
pointer::i
end subroutine
end module

use mod1
use mod2
use mod3
use mod4
use mod5
print *,"pass"
end
