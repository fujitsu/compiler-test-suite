  REAL*8 A1(10,10),B1(10),C(10,10),D(10),A2(10,10),B2(10),point(10)
  REAL*8 E1(10,10),F1(10),G(10,10),E2(10,10),F2(10)
  pointer(ptr,point)
  DATA D/1,2,3,4,5,6,7,8,9,10/

  DO j=1,10
     DO i=1,10
        C(j,i)=j+i
        C(i,j)=i+j+i+j
        A1(i,j)=EXP(C(j,i))
        A2(i,j)=EXP(D(i))
        B1(i)=EXP(C(i,j))
        B2(i)=EXP (D(i))
     ENDDO
  ENDDO

  DO j=1,10
     DO i=1,10
        G(j,i)=j+i
        G(i,j)=i+j+i+j
        E1(i,j)=EXP(G(j,i))
        E2(i,j)=EXP(D(i))
        F1(i)=EXP(G(i,j))
        F2(i)=EXP (D(i))
     ENDDO
  ENDDO

  DO i=1,10
     DO j=1,10
        if (DABS(1-(A1(i,j)/E1(i,j))) > 0.00001) then
           print *,"NG",A1(i,j),E1(i,j)
        end if
        if (DABS(1-(A2(i,j)/E2(i,j))) > 0.00001) then
           print *,"NG",A2(i,j),E2(i,j)
        end if
     END DO
  END DO

  DO i=1,10
     if (DABS(1-(B1(i)/F1(i))) > 0.00001) then
        print *,"NG",B1(i),F1(i)
     end if
     if (DABS(1-(B2(i)/F2(i))) > 0.00001) then
        print *,"NG",B2(i),F2(i)
     end if
  END DO

  ptr = loc(D)
  DO i=1,10
     B1(i)=EXP(point(i))
     B2(i)=EXP(D(i))
  ENDDO

  DO i=1,10
     F1(i)=EXP(point(i))
     F2(i)=EXP(D(i))
  ENDDO

  DO i=1,10
     if (DABS(1-(B1(i)/F1(i))) > 0.00001) then
        print *,"NG",B1(i),F1(i)
     end if
     if (DABS(1-(B2(i)/F2(i))) > 0.00001) then
        print *,"NG",B2(i),F2(i)
     end if
  END DO
  print *,"OK"

END program
