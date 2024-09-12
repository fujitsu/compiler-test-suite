      integer a(10),b(10)
      data a/1,2,3,4,5,6,7,8,9,10/
      data b/1,2,3,4,5,6,7,8,9,10/
      
      if(a(5).eq.5) then
         b(5)=11
      else
         b(5)=99
      endif

      write(6,*) a,b
      stop
      end
