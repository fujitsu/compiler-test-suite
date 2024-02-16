
      complex(8):: p1(16),p2(16)
      complex(8):: m2(16)
      complex(8) :: y1(16),y2(16)
      complex(8) :: ye(128,12),res1(16),res2(16),res3(16)
      common /sbm_area/ y1,y2,ye,p1,p2,m2,res1,res2,res3

      call init

      do itb=1,16
         y2(itb)=ye( itb,2)
         p1(itb)=y1(itb)+3
         p2(itb)=y2(itb)+3
         m2(itb)=y2(itb)-3
      enddo

      do i=1,16
         if (m2(i).ne.res1(i) .or. p2(i).ne.res2(i) .or.
     +       p1(i).ne.res3(i)) goto 10
      enddo
      write(6,*) ' OK '
      goto 20
 10   write(6,*) ' NG '
      write(6,*) m2
      write(6,*) p1
      write(6,*) p2
 20   continue
      end

      subroutine init
      complex(8):: p1(16),p2(16)
      complex(8):: m2(16)
      complex(8) :: y1(16),y2(16)
      complex(8) :: ye(128,12),res1(16),res2(16),res3(16)
      common /sbm_area/ y1,y2,ye,p1,p2,m2,res1,res2,res3

      do i=1,16
         y2(i) = 0
         p1(i) = 0
         p2(i) = 0
         m2(i) = 0
         ye(i,1) = cmplx(i,i+2)
         res1(i) = (-3.,0.)
         res2(i) = (3.,0.)
         res3(i) = (3.,0.)
      enddo
      return
      end
