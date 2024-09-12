      SUBROUTINE sub1()
      REAL*4 t1, t2, t3, e(12)
      COMMON t1, t2, t3, e
      integer i

      DO i = 1, 10
          e(1) = (e(1)+e(2)+e(3)-e(4))*t1
          e(2) = (e(1)+e(2)-e(3)+e(4))*t1
          e(3) = (e(1)-e(2)+e(3)+e(4))*t1
          e(4) = (-e(1)+e(2)+e(3)+e(4))/t3
          e(5) = (e(5)+e(6)+e(7)-e(8))*t1
          e(6) = (e(5)+e(6)-e(7)+e(8))*t1
          e(7) = (e(5)-e(6)+e(7)+e(8))*t1
          e(8) = (-e(5)+e(6)+e(7)+e(8))/t3
          e(9) = (e(9)+e(10)+e(11)-e(12))*t1
          e(10) = (e(9)+e(10)-e(11)+e(12))*t1
          e(11) = (e(9)-e(10)+e(11)+e(12))*t1
          e(12) = (-e(9)+e(10)+e(11)+e(12))/t3
      END DO
      RETURN
      END

      subroutine init()
      REAL*4 t1, t2, t3, e(12)
      COMMON t1, t2, t3, e
      integer i
      DO i = 1, 12
         e(i)=real(i)
      ENDDO
      t1=1.
      t2=2.
      t3=3.
      RETURN
      END

      program main
      REAL*4 e(12)
      COMMON e
      call init()
      call sub1()
      if (abs(sum(e)-(-184461.750))<=0.032) then
         print *,"ok"
      else
         print *,"ng",sum(e)
      endif
      end program
