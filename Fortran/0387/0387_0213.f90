  interface
     subroutine proc(x) 
       integer :: x
     end subroutine
     subroutine aaa(x) 
       integer :: x
     end subroutine
  end interface
  procedure (proc), pointer :: p => null()
   p => aaa
   i=1
   call p(i)
 end
  subroutine aaa(x)   
     integer :: x
       x = x + 1
       if (x .ne. 2) print *,'fail'
       print *,x
       print *,"pass"
  end subroutine
