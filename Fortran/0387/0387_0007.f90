 module mod1
   procedure (proc), pointer, public :: p
  interface
     subroutine proc(x)
       integer :: x
     end subroutine
     subroutine sub(x)
       integer :: x
     end subroutine
  end interface
 end

 use mod1
 p => sub
 i = 0
 call p(i)
 end
 subroutine sub(x)
   integer :: x
    x = x + 1
    print *,x
      print *,"pass"
 end subroutine
