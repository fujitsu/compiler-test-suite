      real*4 CV(100),DNORM, V3(3)
      DO N=1,100
         V3(1)=N
         DNORM = sqrt(V3(1)*2)
         DO K=1,1
            V3(k) = V3(k) /DNORM
         ENDDO
         CV(N)=V3(1)
      ENDDO
      call sub(DNORM,cv)
      write(6,*) " ## OK ## "
      END

      subroutine sub(DNORM,cv)
      real*4 CV(100),DNORM
      return
      end
