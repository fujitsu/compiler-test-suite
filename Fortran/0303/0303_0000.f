         REAL*8 VLR4A(100)
         data VLR4A/100*1./
         N = 100
         CALL TVLR4(N,VLR4A)
         WRITE(6,*) VLR4A
         END

         SUBROUTINE TVLR4(N,VLRA)
         REAL*8  VLRA(N)
         DO I=1,N
           VLRA(I) = N
           N = 10
         ENDDO
         RETURN
         END
