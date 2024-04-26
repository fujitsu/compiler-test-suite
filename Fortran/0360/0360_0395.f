      logical IG2(10)/10*.false./
      integer K(10)/10*0/,ires(10)/3,3,6,3,0,0,0,0,0,0/

      do i=1,10
         if (i.gt.0) m1 = 1
      enddo

      ML=0
      DO 1 ND=1,2
         IG2(1)=.FALSE.
         IF (M1.EQ.1)IG2(1)=.TRUE.
 1    CALL       S(IG2,K(ND),nd)
      do i=1,10
         if (k(i).ne.ires(i)) then
            write(6,*) ' ## NG ##'
            write(6,*) k
            write(6,*) ires
            stop 1
         endif
      enddo
      write(6,*) ' ## OK ##'
      END
      SUBROUTINE S(IG2,KK,j)
      integer KK(10)
      logical IG2(10)
      do jj=j,3
      IF (.true..or..not.IG2(JJ)) KK(JJ)=KK(JJ)+3
      enddo
      END
