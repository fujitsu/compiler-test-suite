  interface
     subroutine proc1(x) 
       integer :: x
     end subroutine
     subroutine proc(x) 
       integer :: x
     end subroutine
     subroutine proc2(x) 
       integer :: x
     end subroutine
  end interface
  procedure (proc), pointer :: p => null()
   p => proc
   i=1
   call p(i)
 end
  subroutine proc(x)   
     integer :: x
       x = x + 1
       if (x .ne. 2) print *,'fail'
       print *,x
       print *,"pass"
  end subroutine
