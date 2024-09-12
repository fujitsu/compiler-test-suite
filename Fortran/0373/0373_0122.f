      program main
      integer a,b,b1,b2
      data a,b,b1,b2/1,0,1,0/
      call sub(a,b,b1,b2)
      end

      subroutine sub(a,b,b1,b2)
      integer a,b,b1,b2
      integer  c
      real     d
      data c,d/0,0/
  
      if(a.ne.0) then
         if (b.ne.0) then 
            if(b1.ne.0) then
               c=1
               d=11.0
            else
               c=2
               d=12.0
            endif
         else
            if(b2.ne.0) then
               c=3
               d=13.0
            else
               c=4
               d=14.0
            endif
         endif
      endif
      
      write(6,*) c,d
      end
