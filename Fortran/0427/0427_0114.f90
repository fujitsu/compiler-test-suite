module mod
  interface
     subroutine proc(x) 
       integer :: x
     end subroutine
     subroutine aaa(x) 
       integer :: x
     end subroutine
  end interface
end

module mod1
  use mod
  procedure (proc), pointer :: p
end

module mod2
use mod1,only:p
private
end

module mod3
use mod1
end

use mod2
use mod3
   p => aaa
   i=1
   call p(i)
 end
  subroutine aaa(x)   
     integer :: x
       x = x + 1
       if (x .ne. 2) print *,'fail'
       print *,"pass"
  end subroutine
