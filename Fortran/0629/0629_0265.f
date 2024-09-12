      integer IBB ( 5 )/5*0/
      DO J=1,4
         IBB(J)=9999
      END DO
      DO J=1,4
         IF (.true..and.J>0) THEN
            IBB(J+1)=1
         ENDIF
      END DO
      write(6,*) ibb
      END
