      program main
      integer a,b1,b2
      data a,b1,b2/1,0,1/
      call sub(a,b1,b2)
      end

      subroutine sub(a,b1,b2)
      integer a,b1,b2
      integer  c
      real d
      integer x
      real y
      data c,d,x,y/0,0,0,0/
      
      if(a.ne.0) then
         if(b1.ne.0) then
            c=1
            d=11.0
         else
            if(b2.ne.0) then
               c=2
               d=12.0
            else
               c=3
               d=13.0
            endif
            c=c+10
            y=14.0
         endif
      endif

      write(6,*) c,d,x,y
      end
