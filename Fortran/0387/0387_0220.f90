 module mod01
 interface
   subroutine aaa(n)
   end subroutine
 end interface
 end module
   use mod01
   procedure (aaa),pointer :: p
   p=>aaa
   call p(n)
   if (n.ne.100) print *,'fail'
   print *,"pass"
   end
 subroutine aaa(n)
  n=100
 end subroutine
