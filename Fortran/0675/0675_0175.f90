  REAL*8 A1(10,10),B1(10),C(10,10),D(10),A2(10,10),B2(10),point(10)
  REAL*8 A1X(10,10),B1X(10),CX(10,10),A2X(10,10),B2X(10)

  pointer(ptr,point)
  DATA D/1,2,3,4,5,6,7,8,9,10/

  DO j=1,10
     DO i=1,10
        C(j,i)=j+i
        C(i,j)=i+j+i+j
        A1(i,j)=SIN(C(j,i))
        A2(i,j)=SIN(D(i))
        B1(i)=EXP(C(i,j))
        B2(i)=EXP (D(i))
     ENDDO
  ENDDO

  DO j=1,10
     DO i=1,10
        CX(j,i)=j+i
        CX(i,j)=i+j+i+j
        A1X(i,j)=SIN(CX(j,i))
        A2X(i,j)=SIN(D(i))
        B1X(i)=EXP(CX(i,j))
        B2X(i)=EXP (D(i))
     ENDDO
  ENDDO

  DO I=1,10
     DO J=1,10
        if (DABS(1-(A1(J,I)/A1X(J,I))) > 0.00001) then
           print *,"NG",A1(J,I),A1X(J,I)
        end if
        if (DABS(1-(A2(J,I)/A2X(J,I))) > 0.00001) then
           print *,"NG",A2(J,I),A2X(J,I)
        end if
     END DO
  END DO

  DO I=1,10
     if (DABS(1-(B1(I)/B1X(I))) > 0.00001) then
        print *,"NG",B1(I),B1X(I)
     end if
     if (DABS(1-(B2(I)/B2X(I))) > 0.00001) then
        print *,"NG",B2(I),B2X(I)
     end if
  END DO

  ptr = loc(D)
  DO i=1,10
     B1(i)=EXP(point(i))
     B2(i)=EXP(D(i))
  ENDDO

  DO i=1,10
     B1X(i)=EXP(point(i))
     B2X(i)=EXP(D(i))
  ENDDO

  DO I=1,10
     if (DABS(1-(B1(I)/B1X(I))) > 0.00001) then
        print *,"NG",B1(I),B1X(I)
     end if
     if (DABS(1-(B2(I)/B2X(I))) > 0.00001) then
        print *,"NG",B2(I),B2X(I)
     end if
  END DO
  print *,"OK"

END program
