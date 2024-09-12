  REAL*8 A(10),B(10),C(10),D(10),E(10),F(10)
  REAL*8 AX(10),BX(10),CX(10),DX(10),EX(10),FX(10)
  integer*4 k
  DATA B/1,2,3,4,5,6,7,8,9,10/
  DATA D/1,2,3,4,5,6,7,8,9,10/
  DATA BX/1,2,3,4,5,6,7,8,9,10/
  DATA DX/1,2,3,4,5,6,7,8,9,10/

  DO i=1,10
     C(i)=i
     F(i)=C(i)+1
     A(i)=EXP(C(i))
     if ( i .eq.5 ) goto 10
     D(i)=i
     B(i)=SIN(D(i)**D(i))
10   E(i)=COS(F(i))**COS(F(i))
  ENDDO

  DO i=1,10
     CX(i)=i
     FX(i)=CX(i)+1
     AX(i)=EXP(CX(i))
     if ( i .eq.5 ) goto 20
     DX(i)=i
     BX(i)=SIN(DX(i)**DX(i))
20   EX(i)=COS(FX(i))**COS(FX(i))
  ENDDO

  DO i=1,10
     if (DABS(1-(A(i)/AX(i))) > 0.00001) then
        print *,"NG",A(i),AX(i)
     end if
     if (DABS(1-(B(i)/BX(i))) > 0.00001) then
        print *,"NG",B(i),BX(i)
     end if
     if (DABS(1-(E(i)/EX(i))) > 0.00001) then
        print *,"NG",E(i),EX(i)
     end if
  END DO

  DO i=1,10
     C(i)=i
     A(i)=LOG(C(i))
     k=i
     call sub1(k)
     E(i)=LOG(D(i)**D(i))
  ENDDO

  DO i=1,10
     CX(i)=i
     AX(i)=LOG(CX(i))
     k=i
     call sub1(k)
     EX(i)=LOG(DX(i)**DX(i))
  ENDDO

  DO i=1,10
     if (DABS(1-(A(i)/AX(i))) > 0.00001) then
        print *,"NG",A(i),AX(i)
     end if
     if (DABS(1-(E(i)/EX(i))) > 0.00001) then
        print *,"NG",E(i),EX(i)
     end if
  END DO

  DO i=1,10
     C(i)=i
     A(i)=SIN(C(i))
     B(i)=fun(i)
     E(i)=COS(D(i)**D(i))
  ENDDO

  DO i=1,10
     CX(i)=i
     AX(i)=SIN(CX(i))
     BX(i)=fun(i)
     EX(i)=COS(DX(i)**DX(i))
  ENDDO

  DO i=1,10
     if (DABS(1-(A(i)/AX(i))) > 0.00001) then
        print *,"NG",A(i),AX(i)
     end if
     if (DABS(1-(E(i)/EX(i))) > 0.00001) then
        print *,"NG",E(i),EX(i)
     end if
  END DO

  DO i=1,10
     C(i)=i
     A(i)=LOG(C(i))
     B(i)=SIN(D(i))
     E(i)=COS(F(i))
  ENDDO

  DO i=1,10
     CX(i)=i
     AX(i)=LOG(CX(i))
     BX(i)=SIN(DX(i))
     EX(i)=COS(FX(i))
  ENDDO

  DO i=1,10
     if (DABS(1-(A(i)/AX(i))) > 0.00001) then
        print *,"NG",A(i),AX(i)
     end if
     if (DABS(1-(B(i)/BX(i))) > 0.00001) then
        print *,"NG",B(i),BX(i)
     end if
     if (DABS(1-(E(i)/EX(i))) > 0.00001) then
        print *,"NG",E(i),EX(i)
     end if
  END DO
  print *,"OK"

END program

function fun(k)
  integer k
  fun=k+2
end function fun

subroutine sub1(k2)
  integer*4 k2
  k2=k2+1
end subroutine sub1
