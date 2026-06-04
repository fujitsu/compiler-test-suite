module mod1
  procedure (proc), pointer :: p => null()
  interface
     subroutine proc(x)
       integer :: x
     end subroutine
     subroutine aaa(x)
       integer :: x
     end subroutine
  end interface
end  
 use mod1
   p => aaa
   i=1
   call p(i)
   call aaa(i)
  if (i.ne.3) print *,'fail'
  print *,"pass"
 end
  subroutine aaa(x)   
     integer :: x
       x = x + 1
  end subroutine
  subroutine bbb(x)   
     real :: x
       x = x + 1
  end subroutine
