module moda
contains
   recursive subroutine func(p)
   value p
   pointer(p,iq)
   iq=5
   end subroutine  

   recursive subroutine main(k)
   integer j
   external printf !$pragma c(printf)
   j=1
   call func(loc(j))
   print *,'j =',j
   end subroutine
end
use moda
call main(k)
print *,'pass'
end
