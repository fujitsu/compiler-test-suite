 module mod
  procedure (procx), pointer :: p1, p2, p3 => null()
  procedure (proc2), pointer :: p4=> NULL(), p5, p6 => null()
  interface
     subroutine proc1(x) 
       integer :: x
     end subroutine
     subroutine proc2(x) 
       integer :: x
     end subroutine
     subroutine procx(x) 
       integer :: x
     end subroutine
     subroutine proc3(x) 
       integer :: x
     end subroutine
     subroutine aa1(x) 
       integer :: x
     end subroutine
     subroutine aa3(x) 
       integer :: x
     end subroutine
     subroutine aa2(x) 
       integer :: x
     end subroutine
  end interface
 end module

   use mod
   p1 => aa1
   p2 => aa2
   p3 => aa3
   p4 => aa2
   p5 => aa2
   p6 => aa2
   i=1
   call p1(i)
   i=1
   call p2(i)
   call p3(i)
   i=1
   call p2(i)
   i=1
   call p2(i)
   i=1
   call p2(i)
   print *,"pass"
 end
  subroutine aa1(x)   
     integer :: x
       x = x + 1
       if (x .ne. 2) print *,'fail'
  end subroutine
  subroutine aa2(x)   
     integer :: x
       x = x + 2
       if (x .ne. 3) print *,'fail'
  end subroutine
  subroutine aa3(x)   
     integer :: x
       x = x + 2
       if (x .ne. 5) print *,'fail'
  end subroutine
