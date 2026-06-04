  interface
     subroutine proc1(x) 
       integer :: x
     end subroutine
     subroutine proc2(x) 
       real :: x
     end subroutine
     subroutine procx(x) 
       integer :: x
     end subroutine
     subroutine proc3(x) 
       real :: x
     end subroutine
     subroutine aa1(x)
       integer :: x
     end subroutine
     subroutine aa2(x)
       real :: x
     end subroutine
     subroutine aa3(x)
       real :: x
     end subroutine
  end interface
  procedure (procx), pointer :: p1 => null()
  procedure (proc2), pointer :: p2, p3 => null()
   p1 => aa1
   p2 => aa2
   p3 => aa3
   i=1
   call p1(i)
   r=2.e0
   call p2(r)
   call p3(r)
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
       if (x .ne. 4.e0) print *,'fail'
  end subroutine
  subroutine aa3(x)   
      real :: x
       x = x + 1.e0
       if (x .ne. 5.e0) print *,'fail'
  end subroutine
