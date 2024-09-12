      program main
      structure/tag1/
        integer*4 x0
        integer*4 x1
        integer*4 y0
        integer*4 y1
        real*4    x
        real*4    y
        real*4    r4a
        end structure
      record /tag1/str(30),j(30)
      structure/tag2/
        integer*4 x0
        integer*4 x1
        integer*4 y0
        integer*4 y1
        real*4    x
        real*4    y
        real*4    r4a
        end structure
      record /tag2/atr(30)
      pointer (ptr,str)
      ptr=loc(j(1))

      call sub01(str)
      call sub02(atr)
      do 10 i=1,30
         if((str(i).x0.ne.atr(i).x0).or.(str(i).y0.ne.atr(i).y0).or.
     c      (str(i).x1.ne.atr(i).x1).or.(str(i).y1.ne.atr(i).y1).or.
     c      (str(i).x .ne. atr(i).x).or.(str(i).y .ne. atr(i).y).or.
     c      (str(i).r4a  .ne.  atr(i).r4a))goto 20
 10   continue
      write(6,*)' ***** ok ***** '
      goto 30
 20   write(6,*)' ***** ng ***** '
      write(6,*)str.r4a,atr.r4a
 30   stop
      end

      subroutine sub01(qtr)
      structure/tag1/
        integer*4 x0
        integer*4 x1
        integer*4 y0
        integer*4 y1
        real*4    x
        real*4    y
        real*4    r4a
        end structure
        record /tag1/str(30),qtr(30)
      integer*4 a0(30),b0(30),a1(30),b1(30)
      data a0/0,1,8,7,0,3,3,2,3,-6,0,5,4,7,-9,
     c        9,7,8,0,-4,4,3,2,1,1,5,-1,6,0,7/
      data b0/5,0,2,2,4,-6,0,6,6,-2,0,2,-2,4,1,
     c        0,6,6,8,4,2,6,8,4,0,-4,4,8,0,8/
      data a1/3,2,4,-5,1,5,4,0,5,-5,1,7,-7,4,1,
     c        5,-6,-1,1,-1,1,2,3,5,8,-3,1,4,5,-9/
      data b1/4,-3,7,0,7,-7,4,0,4,-4,8,3,0,0,0,
     c        2,2,-4,0,5,4,8,-2,0,2,2,-4,0,-4,4/

      pointer (ptr,str)
      ptr=loc(qtr(1))
      do 1 i=1,30
         str(i).x0=a0(i)
         str(i).y0=b0(i)
         str(i).x1=a1(i)
         str(i).y1=b1(i)
 1    continue
      do 2 i=1,30
         if(str(i).x0 .eq. str(i).x1)then
            if(str(i).y0 .eq. str(i).y1)then
               str(i).x=0
               str(i).y=0
            else   
               str(i).x=0
               str(i).y=real(str(i).y0)
            endif   
         else
            if(str(i).y0 .eq. str(i).y1)then
               str(i).x=real(str(i).x0)
               str(i).y=0
            else   
               str(i).x=real((str(i).x0*str(i).y1-
     c              str(i).x1*str(i).y0)/(str(i).y1-str(i).y0))
               str(i).y=real((str(i).x0*str(i).y1-
     c              str(i).x1*str(i).y0)/(str(i).x1-str(i).x0))
            endif   
         endif   
 2    continue
      str.r4a=(str.x*(-str.y))/2
      return
      end

      subroutine sub02(atr)
      structure/tag2/
        integer*4 x0
        integer*4 x1
        integer*4 y0
        integer*4 y1
        real*4    x
        real*4    y
        real*4    r4a
        end structure
      record /tag2/atr(30)
      integer*4 a0(30),b0(30),a1(30),b1(30)
      data a0/0,1,8,7,0,3,3,2,3,-6,0,5,4,7,-9,
     c        9,7,8,0,-4,4,3,2,1,1,5,-1,6,0,7/
      data b0/5,0,2,2,4,-6,0,6,6,-2,0,2,-2,4,1,
     c        0,6,6,8,4,2,6,8,4,0,-4,4,8,0,8/
      data a1/3,2,4,-5,1,5,4,0,5,-5,1,7,-7,4,1,
     c        5,-6,-1,1,-1,1,2,3,5,8,-3,1,4,5,-9/
      data b1/4,-3,7,0,7,-7,4,0,4,-4,8,3,0,0,0,
     c        2,2,-4,0,5,4,8,-2,0,2,2,-4,0,-4,4/
      do 1 i=1,30
         atr(i).x0=a0(i)
         atr(i).y0=b0(i)
         atr(i).x1=a1(i)
         atr(i).y1=b1(i)
 1    continue
      do 2 i=1,30
         if(atr(i).x0 .eq. atr(i).x1)then
            if(atr(i).y0 .eq. atr(i).y1)then
               atr(i).x=0
               atr(i).y=0
            else   
               atr(i).x=0
               atr(i).y=real(atr(i).y0)
            endif   
         else
            if(atr(i).y0 .eq. atr(i).y1)then
               atr(i).x=real(atr(i).x0)
               atr(i).y=0
            else   
               atr(i).x=real((atr(i).x0*atr(i).y1-
     c              atr(i).x1*atr(i).y0)/(atr(i).y1-atr(i).y0))
               atr(i).y=real((atr(i).x0*atr(i).y1-
     c              atr(i).x1*atr(i).y0)/(atr(i).x1-atr(i).x0))
            endif   
         endif   
 2    continue
      do 10 i=1,30
 10      atr(i).r4a=(atr(i).x*(-atr(i).y))/2
      return
      end

