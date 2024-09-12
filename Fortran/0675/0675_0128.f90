  REAL*8 A1(100),B1(100),B2(100),K(100),L(100)
  REAL*8 A1X(100),B1X(100),B2X(100)
  DO I=1,100
     K(I)=I+3
     A1(I)=EXP(K(I))
     DO j=1,100
        L(J)=J*2
        B1(J)=SIN(L(J))
        B2(J)=COS(L(J))
     ENDDO
  ENDDO

  DO I=1,100
     K(I)=I+3
     A1X(I)=EXP(K(I))
     DO j=1,100
        L(J)=J*2
        B1X(J)=SIN(L(J))
        B2X(J)=COS(L(J))
     ENDDO
  ENDDO

  DO I=1,100
     if (DABS(1-(A1(I)/A1X(I))) > 0.00001) then
        print *,"NG",A1(I),A1X(I)
     end if
     if (DABS(1-(B1(I)/B1X(I))) > 0.00001) then
        print *,"NG",B1(I),B1X(I)
     end if
     if (DABS(1-(B2(I)/B2X(I))) > 0.00001) then
        print *,"NG",B2(I),B2X(I)
     end if
  END DO
  print *,"OK"

END program
