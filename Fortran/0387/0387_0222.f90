 module mod
  procedure (proc1), pointer :: p1,p3
  interface
     subroutine proc1(x) 
       integer :: x
     end subroutine
     subroutine proc2(x) 
       real :: x
     end subroutine
     subroutine aa2(x) 
       real :: x
     end subroutine
     subroutine procx(x) 
       integer :: x
     end subroutine
     subroutine aa3(x) 
       integer :: x
     end subroutine
     subroutine proc3(x) 
       real :: x
     end subroutine
     subroutine aa1(x) 
       integer :: x
     end subroutine
  end interface
 end module
   use mod
   procedure (proc2), pointer :: p2
   integer ::i
   real :: r
   p1 => aa1
   p2 => aa2
   p3 => aa3
   i=1
   call p1(i)
   r=2.e0
   call p2(r)
   i=3
   call p3(i)
   print *,"pass"
 end
  subroutine aa1(x)   
     integer :: x
       x = x + 1
       if (x .ne. 2) print *,'fail'
  end subroutine
  subroutine aa2(x)   
     real :: x
       x = x + 2.e0
       if (x .ne. 4) print *,'fail'
  end subroutine
  subroutine aa3(x)   
     integer :: x
       x = x + 2
       if (x .ne. 5) print *,'fail'
  end subroutine
