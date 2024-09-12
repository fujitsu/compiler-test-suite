  interface
     subroutine proc(x)
       integer :: x
     end subroutine
     subroutine sub(x)
       integer :: x
     end subroutine
  end interface

   procedure (proc), pointer :: p
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
