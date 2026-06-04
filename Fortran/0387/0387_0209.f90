  interface
     subroutine fun0(x)
       integer :: x
     end subroutine
     subroutine aaa(x)
       integer :: x
     end subroutine
     subroutine fun1(x)
       integer :: x
     end subroutine
  end interface
  procedure (fun1), pointer :: p=>NULL()
   p => aaa
   call p(i)
   if (i .ne. 3) print *,'fail'
   print *,"pass"
 end
 subroutine aaa(x)
   integer :: x
   x=3
   return
 end subroutine
