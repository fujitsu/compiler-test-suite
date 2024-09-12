      SUBROUTINE sub1()
      REAL*4 t1, t2, t3, e(4)
      COMMON t1, t2, t3, e
      integer i

      DO i = 1, 10
          e(1) = (e(2)+e(3)-e(4))*t1
          e(1) = (e(2)-e(3)+e(4))*t1
          e(1) = (-e(2)+e(3)+e(4))*t1
          e(1) = (e(2)+e(3)+e(4))/t3
      END DO
      RETURN
      END

      subroutine init()
      REAL*4 t1, t2, t3, e(4)
      COMMON t1, t2, t3, e
      integer i
      DO i = 1, 4
         e(i)=real(i)
      ENDDO
      t1=1.
      t2=2.
      t3=3.
      RETURN
      END

      program main
      REAL*4 e(4),res
      COMMON e
      call init()
      call sub1()
      res=sum(e)
      if (abs(res-9.0)<=0.01) then
         print *,"ok"
      else
         print *,"ng",res
      endif
      end program
