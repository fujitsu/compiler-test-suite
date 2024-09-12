      SUBROUTINE sub1()
      REAL*4 t1, t2, t3, e(4), a(10)
      COMMON t1, t2, t3, e, a
      integer i

      DO i = 1, 10
          e(1) = i
          a(i) = a(i) + i
          e(1) = e(1) + i
      END DO
      RETURN
      END

      subroutine init()
      REAL*4 t1, t2, t3, e(4), a(10)
      COMMON t1, t2, t3, e, a
      integer i
      DO i = 1, 4
         e(i)=real(i)
      ENDDO
      DO i = 1, 10
         a(i)=real(i)
      ENDDO
      t1=1.
      t2=2.
      t3=3.
      RETURN
      END

      program main
      REAL*4 e(4), a(10), res
      COMMON e, a
      call init()
      call sub1()
      res=sum(e)+sum(a)
      if (abs(res-91.0)<=0.01) then
         print *,"ok"
      else
         print *,"ng",res
      endif
      end program
