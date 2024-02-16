      real*8 bu(100),ww(100,1),sw/0/,res/10100/
      integer iau(100)

      do i=1,100
         bu(i) = 2
         ww(i,1) = i
      enddo
      do i=1,100,2
         iau(i) = i
         iau(i+1) = 100-i+1
      enddo
      call sub(bu,ww,iau,sw,100,1)
      if (sw.eq.res) then
         write(6,*) "ok"
      else
         write(6,*) sw
      endif
      end
      
      
      subroutine sub(bu,ww,iau,sw,ieU,isU)
      real*8 bu(100),ww(100,1),sw
      integer iau(100),pt/1/
      do j=ieU, isU, -1
         inod = IAU(j)
         SW=SW+BU(j)*WW(inod,PT)
      enddo
      end
