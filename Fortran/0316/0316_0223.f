
       integer r(200)
       interface
         function fun(n)
          integer fun(200),n
         end function fun
       end interface
       
       n=10
       r=fun(n)

       do i=1,200 
         if (r(i).ne.10) then
         print *,r(i)
           print *,'??? ng ???'
           stop 2
         endif 
       enddo
       print *,'*** ok ***'

       end

       recursive function fun(n) result(result)
       integer result(200)

       nn=n
       n=n-1
       if (n.eq.0) then
         result=1
         return 
       endif

       result=fun(n)+1
       
       do i=1,200 
         if (result(i).ne.nn) then
           print *,'??? ng ???'
           stop 1
         endif 
       enddo
       end
