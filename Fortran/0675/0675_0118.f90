  REAL*8 A1(100,100),B1(100,100)
  REAL*8 A2(100,100),B2(100,100)
  DO J=1,100
     DO I=1,100
        B1(I,J)=I*3+J/2
        A1(I,J)=EXP(B1(I,J))
     ENDDO
  ENDDO

  DO J=1,100
     DO I=1,100
        B2(I,J)=I*3+J/2
        A2(I,J)=EXP(B2(I,J))
     ENDDO
  ENDDO

  DO J=1,100
     DO I=1,100
        if (DABS(1-(A1(I,J)/A2(I,J))) > 0.00001) then
           print *,"NG",A1(I,J),A2(I,J)
        end if
        if (DABS(1-(B1(I,J)/B2(I,J))) > 0.00001) then
           print *,"NG",B1(I,J),B2(I,J)
        end if
     END DO
  END DO
  print *,"OK"

END program
