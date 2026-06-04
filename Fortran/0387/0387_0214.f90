  interface
     subroutine proc(x) 
       integer :: x
     end subroutine
     subroutine aaa(x)   
       integer :: x
     end subroutine
  end interface
  procedure (proc), pointer :: p
  integer :: i,j
   p => aaa
   i=1
   j=1
   call p(i)
   call aaa(j)
   if (i .ne. j) print *,'fail'
   print *,"pass"
 end
  subroutine aaa(x)   
     integer :: x
       x = 0
       x = x + 1
  end subroutine
 function func(x) result(y)
  integer x,y
  y=x+1
 end function
