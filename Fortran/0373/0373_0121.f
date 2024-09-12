      program main
      integer a
      integer b1
      integer b2
      a=1
      b1=1
      b2=0
      call sub(a,b1,b2)
      end

      subroutine sub(a,b1,b2)
      integer a
      integer b1
      integer b2
      integer c1
      integer c2
      real d1
      real d2
      data c1,c2,d1,d2/0,0,0,0/

      if(a.ne.0) then

         if(b1.ne.0) then
            c1=1
            d1=11.0
         else
            c1=2
            d1=12.0
         endif

         if(b2.gt.b1) then
            c2=c1
            d2=d1
         else
            c2=c1
            d2=d1
         endif

      else
         c1=10
         d1=110.0
      endif

      write(6,*) c1,c2,d1,d2
      end
