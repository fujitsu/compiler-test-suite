
      complex(8) :: y1(16),p1(16)
      complex(8) :: ye(128,12),res(16)
      common /sbm_area/ y1,p1,ye,res

      call init

          do itb=1,16
          y1(itb)=ye( itb,1)
          p1(itb)=y1(itb)+2
        enddo

        do i=1,16
           if (p1(i).ne.res(i)) goto 10
        enddo
      write(6,*) ' OK '
        goto 20
 10     write(6,*) ' NG '
        write(6,*) p1
        write(6,*) res
 20     continue
      end

      subroutine init
      complex(8) :: y1(16),p1(16)
      complex(8) :: ye(128,12),res(16)
      common /sbm_area/ y1,p1,ye,res

      do i=1,16
         ye(i,1) = cmplx(i,i+2)
         p1(i) = 0
         y1(i) = 0
         res(i) = cmplx(i+2,i+2)
      enddo
      return
      end
