module m
  interface
     module subroutine sub(a,n)
       !implicit none
       interface
          integer function ext(n)
       !implicit none
          integer::n
          end function ext
       end interface
       procedure(ext)::a
          integer::n
     end subroutine sub
  end interface
contains
  module procedure sub
   if (a(n)/=n) print *,101
  end 
end

use m
       !implicit none
    interface
       integer function f(n)
       !implicit none
          integer::n
       end function 
    end interface
call sub(f,1)
print *,'sngg188h : pass'
end
       integer function f(n)
       !implicit none
          integer::n
       f=n
       end function 
