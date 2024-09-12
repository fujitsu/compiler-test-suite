      program main
      integer a,b
      data a,b/1,0/
      call sub(a,b)
      end
      
      subroutine sub(a,b)
      integer a,b
      integer c
      real d
      data c,d/0,0/

      if(a.ne.0) then
         if(b.ne.0) then
            c=1
            d=11.0
         endif
         b=c+10
      endif

      write(6,*) b,c,d
      end
