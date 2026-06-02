  interface
     function fun1(x)
       integer :: x
     end function
     function aaa(x)
       integer :: x
     end function
  end interface
  procedure (fun1), pointer :: p
   p => aaa
   i=1
   i= aaa(i)
   if (i .ne. 3) print *,'fail'
   print *,"pass"
 end
 function aaa(x)
   integer :: x
   x=3
   aaa=3
   return
 end function
