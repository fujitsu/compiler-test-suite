      logical IG2(3)
      integer K(2)
      do i=1,10
         if (i.gt.0) m1 = 1
      enddo
      ML=0
      DO 1 ND=1,2
         IG2(1)=.FALSE.
         IF (M1.EQ.1)IG2(1)=.TRUE.
 1    CALL       S(IG2,K(ND))

      if (k(1).ne.1 .or. k(2).ne.1) then
         write(6,*) ' ## NG ##',K(1),k(2)
      else
         write(6,*) ' ## OK ##'
      endif
      END
      SUBROUTINE S(IG2,KK)
      logical IG2(3)
      IF (.true..or..not.IG2(1)) KK=1
      END
